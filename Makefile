# Cours "Sémantique et Application à la Vérification de programmes"
#
# Antoine Miné 2015
# Ecole normale supérieure, Paris, France / CNRS / INRIA

# Makefile


# points to compilers
#
# (we rely heavily on ocamlfind)
# (no change needed, the default ones in /usr/bin should be good)
# 
OCAMLFIND = ocamlfind
OCAMLLEX = ocamllex
MENHIR = menhir


# options for compilers
#
# (change this if you want to enable/disable debugging)
#
OCAMLCFLAGS = -g
OCAMLOPTFLAGS = -g
OCAMLLEXFLAGS =
MENHIRFLAGS = --explain


# library paths
#
# (change this if you add new subdirectories or libraries)
#
LD = LD_LIBRARY_PATH=~/.opam/4.02.0/share/apron/lib
OCAMLINC = -I frontend -I libs -I domains -I iterator

# libraries
#
# (change this to add new libraries)
#
LIBS = -package zarith -package apron
CMXA =
CMA = str.cma polkaMPQ.cma #bigarray.cma gmp.cma apron.cma polkaMPQ.cma

# name of the compiled executable
#
# (change to a better name matching your project)
#
TARGET = prog/main


# compile either to byte code or native code
#
# uncomment only one of the two lines!
#
all: $(TARGET).byte
#all: $(TARGET).opt


# list of automatically generated files (by ocamllex and menhir)
#
# (this will probably not change during the project)
#
AUTOGEN = \
  frontend/lexer.ml \
  frontend/parser.ml \
  frontend/parser.mli


# list of ML source files to compile (including automatically generated)
#
# add your files here, in the right order!
#
MLFILES = \
	libs/mapext.ml \
	frontend/abstract_syntax_tree.ml \
	frontend/parser.ml \
	frontend/lexer.ml \
	frontend/cfg.ml \
	frontend/cfg_printer.ml \
	frontend/tree_to_cfg.ml \
	frontend/file_parser.ml \
	domains/constant_domain.ml \
	domains/interval_domain.ml \
	domains/value_domain.ml \
	domains/relational_domain.ml\
	domains/domain.ml \
	iterator/worklist.ml \
	iterator/worklistinter.ml\
	iterator/iterator.ml \
	prog/main.ml


# list of MLI source files
#
# add your files here
# (this is only used for ocamldep)
#
MLIFILES = \
  libs/mapext.mli \
  frontend/parser.mli \
  frontend/file_parser.mli


# below are general compilation rules
#
# you probably don't need to change anything below this point


# list of object files, derived from ML sources
#
CMOFILES = $(MLFILES:%.ml=%.cmo)
CMXFILES = $(MLFILES:%.ml=%.cmx)

$(TARGET).byte: $(CMOFILES)
	$(LD) $(OCAMLFIND) ocamlc -o $@ $(OCAMLCFLAGS) $(OCAMLINC) $(LIBS) $(CMA) -linkpkg $+
	cp prog/launch.sh statan; chmod u+x statan

# native link
$(TARGET).opt: $(CMXFILES)
	$(LD) $(OCAMLFIND) ocamlopt -o $@ $(OCAMLOPTFLAGS) $(OCAMLINC) $(LIBS) $(CMXA) -linkpkg $+


# compilation rules

%.cmo: %.ml %.cmi
	$(LD) $(OCAMLFIND) ocamlc $(OCAMLCFLAGS) $(OCAMLINC) $(LIBS) -c $*.ml

%.cmx: %.ml %.cmi
	$(LD) $(OCAMLFIND) ocamlopt $(OCAMLOPTFLAGS) $(OCAMLINC) $(LIBS) -c $*.ml

%.cmi: %.mli
	$(LD) $(OCAMLFIND) ocamlc $(OCAMLCFLAGS) $(OCAMLINC) $(LIBS) -c $*.mli

%.cmo: %.ml
	$(LD) $(OCAMLFIND) ocamlc $(OCAMLCFLAGS) $(OCAMLINC) $(LIBS) -c $*.ml

%.cmx: %.ml
	$(LD) $(OCAMLFIND) ocamlopt $(OCAMLOPTFLAGS) $(OCAMLINC) $(LIBS) -c $*.ml

%.ml: %.mll
	$(LD) $(OCAMLLEX) $(OCAMLLEXFLAGS) $*.mll

%.ml %.mli: %.mly
	$(LD) $(MENHIR) $(MENHIRFLAGS) $*.mly


# remove temporaries and binaries
#
clean:
	rm statan
	rm -f depend $(AUTOGEN) $(TARGET).byte $(TARGET).opt
	rm -f `find . -name "*.o"`
	rm -f `find . -name "*.a"`
	rm -f `find . -name "*.cm*"`
	rm -f `find . -name "*~"`
	rm -f `find . -name "\#*"`
	rm -f `find . -name "*.conflicts"`

.phony:	clean


# automatic dependencies
#
depend: $(MLFILES) $(MLIFILES)
	-$(OCAMLFIND) ocamldep -native $(OCAMLINC) $+ > depend

include depend

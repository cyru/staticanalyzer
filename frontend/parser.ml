exception Error

type token = 
  | TOK_int of (
# 69 "frontend/parser.mly"
       (string)
# 8 "frontend/parser.ml"
)
  | TOK_id of (
# 68 "frontend/parser.mly"
       (string)
# 13 "frontend/parser.ml"
)
  | TOK_WHILE
  | TOK_VOID
  | TOK_TRUE
  | TOK_STAR_EQUAL
  | TOK_STAR
  | TOK_SEMICOLON
  | TOK_RPAREN
  | TOK_RETURN
  | TOK_RCURLY
  | TOK_RAND
  | TOK_PLUS_PLUS
  | TOK_PLUS_EQUAL
  | TOK_PLUS
  | TOK_PERCENT_EQUAL
  | TOK_PERCENT
  | TOK_NOT_EQUAL
  | TOK_MINUS_MINUS
  | TOK_MINUS_EQUAL
  | TOK_MINUS
  | TOK_LPAREN
  | TOK_LESS_EQUAL
  | TOK_LESS
  | TOK_LCURLY
  | TOK_INT
  | TOK_IF
  | TOK_GREATER_EQUAL
  | TOK_GREATER
  | TOK_GOTO
  | TOK_FOR
  | TOK_FALSE
  | TOK_EXCLAIM
  | TOK_EQUAL_EQUAL
  | TOK_EQUAL
  | TOK_EOF
  | TOK_ELSE
  | TOK_DIVIDE_EQUAL
  | TOK_DIVIDE
  | TOK_COMMA
  | TOK_COLON
  | TOK_BREAK
  | TOK_BRAND
  | TOK_BAR_BAR
  | TOK_ASSERT
  | TOK_AND_AND

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState170
  | MenhirState167
  | MenhirState164
  | MenhirState162
  | MenhirState154
  | MenhirState152
  | MenhirState148
  | MenhirState142
  | MenhirState136
  | MenhirState134
  | MenhirState129
  | MenhirState125
  | MenhirState123
  | MenhirState121
  | MenhirState116
  | MenhirState111
  | MenhirState109
  | MenhirState107
  | MenhirState103
  | MenhirState101
  | MenhirState98
  | MenhirState96
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState84
  | MenhirState82
  | MenhirState80
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState69
  | MenhirState67
  | MenhirState63
  | MenhirState61
  | MenhirState58
  | MenhirState56
  | MenhirState52
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState34
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState27
  | MenhirState20
  | MenhirState18
  | MenhirState15
  | MenhirState13
  | MenhirState9
  | MenhirState3
  | MenhirState0


# 16 "frontend/parser.mly"
  
open Abstract_syntax_tree

# 128 "frontend/parser.ml"
let _eRR =
  Error

let rec _menhir_goto_option_ext_bool_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_ext_bool_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv669 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv665 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv666)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv667 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_BRAND ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EXCLAIM ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_FALSE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LPAREN ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_TRUE ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_BRAND ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EXCLAIM ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_FALSE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LPAREN ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_TRUE ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_assign__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState123 | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ = 
# 59 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x )
# 242 "frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv663 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv661 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__) = _v in
        ((let ((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _v : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__ = let x =
          let _endpos = _startpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 263 "frontend/parser.ml"
          
        in
        
# 146 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 269 "frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_assign__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv662)) : 'freshtv664)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fun_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fun_decl -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv655) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_fun_decl) = _v in
    let (_startpos : Lexing.position) = _startpos in
    let (_endpos : Lexing.position) = _endpos in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv653) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x0 : 'tv_fun_decl) = _v in
    let (_startpos_x0_ : Lexing.position) = _startpos in
    let (_endpos_x0_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos_x0_ in
    let _endpos = _endpos_x0_ in
    let _v : 'tv_toplevel = let d =
      let x = x0 in
      
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 296 "frontend/parser.ml"
      
    in
    
# 97 "frontend/parser.mly"
                            ( AST_fun_decl d )
# 302 "frontend/parser.ml"
     in
    _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv654)) : 'freshtv656)

and _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv651) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_assign___) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv649) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_assign___) = _v in
    ((let _v : 'tv_assign_list = let l =
      let xs = xs0 in
      
# 135 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 321 "frontend/parser.ml"
      
    in
    
# 250 "frontend/parser.mly"
                                             ( l )
# 327 "frontend/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv647) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_assign_list) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_BRAND ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_EXCLAIM ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_FALSE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LPAREN ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_MINUS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_PLUS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_RAND ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_TRUE ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_id _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_int _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState121 in
                ((let _v : 'tv_option_ext_bool_expr__ = 
# 29 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( None )
# 377 "frontend/parser.ml"
                 in
                _menhir_goto_option_ext_bool_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv645 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv641 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_ASSERT ->
                _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_BREAK ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_FOR ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_GOTO ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_IF ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LCURLY ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_RETURN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_SEMICOLON ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_WHILE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_id _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv642)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv643 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv644)) : 'freshtv646)
    | _ ->
        _menhir_fail ()) : 'freshtv648)) : 'freshtv650)) : 'freshtv652)

and _menhir_goto_bool_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_bool_expr -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    match _menhir_s with
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv581 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos__menhir_p0_ in
        let _endpos = _endpos_x0_ in
        let _v : 'tv_bool_expr = let e =
          let _startpos = _endpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 461 "frontend/parser.ml"
          
        in
        let o =
          
# 166 "frontend/parser.mly"
                     ( AST_NOT )
# 468 "frontend/parser.ml"
          
        in
        
# 115 "frontend/parser.mly"
    ( AST_bool_unary (o,e) )
# 474 "frontend/parser.ml"
         in
        _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv582)) : 'freshtv584)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv587 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos__3_ : Lexing.position) = _startpos in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_, _endpos__1_), _, e, _startpos_e_, _endpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : 'tv_bool_expr = 
# 106 "frontend/parser.mly"
    ( e )
# 503 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv586)) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv597 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv593 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 534 "frontend/parser.ml"
              
            in
            let o =
              
# 192 "frontend/parser.mly"
                     ( AST_OR )
# 541 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 551 "frontend/parser.ml"
              
            in
            
# 118 "frontend/parser.mly"
    ( AST_bool_binary (o,e1,e2) )
# 557 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv594)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv595 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv601 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv599 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos_x1_ in
        let _v : 'tv_bool_expr = let e2 =
          let _startpos = _endpos__menhir_p0_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 582 "frontend/parser.ml"
          
        in
        let o =
          
# 191 "frontend/parser.mly"
                     ( AST_AND )
# 589 "frontend/parser.ml"
          
        in
        let _startpos_o_ = _endpos_x0_ in
        let e1 =
          let _endpos = _startpos_o_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 599 "frontend/parser.ml"
          
        in
        
# 118 "frontend/parser.mly"
    ( AST_bool_binary (o,e1,e2) )
# 605 "frontend/parser.ml"
         in
        _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv600)) : 'freshtv602)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv607 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv603 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_ASSERT ->
                _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_BREAK ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_FOR ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_GOTO ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_IF ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LCURLY ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_RETURN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_SEMICOLON ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_WHILE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_id _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv605 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv613 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv609 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_ASSERT ->
                _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_BREAK ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_FOR ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_GOTO ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_IF ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LCURLY ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_RETURN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_SEMICOLON ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_WHILE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_id _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv611 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv625 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv621 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv617 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv615 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos__5_ : Lexing.position) = _startpos in
                let (_endpos__5_ : Lexing.position) = _endpos in
                ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p1_, _endpos__menhir_p1_) = _menhir_stack in
                let _menhir_p1 = () in
                let _menhir_p0 = () in
                let _startpos = _startpos__1_ in
                let _endpos = _endpos__5_ in
                let _v : 'tv_stat = let e =
                  let _startpos = _endpos__menhir_p0_ in
                  let _endpos = _startpos__menhir_p1_ in
                  let x = x0 in
                  
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 753 "frontend/parser.ml"
                  
                in
                
# 276 "frontend/parser.mly"
    ( AST_assert e )
# 759 "frontend/parser.ml"
                 in
                _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv616)) : 'freshtv618)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv619 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv623 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_AND_AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_BAR_BAR ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_option_ext_bool_expr__ = let x =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 797 "frontend/parser.ml"
              
            in
            
# 31 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 803 "frontend/parser.ml"
             in
            _menhir_goto_option_ext_bool_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | _ ->
        _menhir_fail ()

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_goto_assign : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_assign -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    match _menhir_s with
    | MenhirState167 | MenhirState13 | MenhirState101 | MenhirState107 | MenhirState154 | MenhirState111 | MenhirState152 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv567 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv565 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos__2_ : Lexing.position) = _startpos in
            let (_endpos__2_ : Lexing.position) = _endpos in
            ((let (_menhir_stack, _menhir_s, a, _startpos_a_, _endpos_a_) = _menhir_stack in
            let _startpos = _startpos_a_ in
            let _endpos = _endpos__2_ in
            let _v : 'tv_stat = 
# 255 "frontend/parser.mly"
    ( a )
# 980 "frontend/parser.ml"
             in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv566)) : 'freshtv568)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState116 | MenhirState148 | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_id _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv574)
        | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_separated_nonempty_list_TOK_COMMA_ext_assign__ = let x =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1022 "frontend/parser.ml"
              
            in
            
# 144 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1028 "frontend/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_assign__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_int_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState63 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ = 
# 59 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x )
# 1056 "frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv563 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__) = _v in
        ((let ((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _v : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__ = let x =
          let _endpos = _startpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1077 "frontend/parser.ml"
          
        in
        
# 146 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1083 "frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_int_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
    | _ ->
        _menhir_fail ()

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv555 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
    let (_startpos__3_ : Lexing.position) = _startpos in
    let (_endpos__3_ : Lexing.position) = _endpos in
    ((let ((_menhir_stack, _menhir_s, _startpos__1_, _endpos__1_), _, e, _startpos_e_, _endpos_e_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_int_expr = 
# 129 "frontend/parser.mly"
    ( e )
# 1125 "frontend/parser.ml"
     in
    _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv556)

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___) = _v in
    ((let _v : 'tv_int_expr_list = let l =
      let xs = xs0 in
      
# 135 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1236 "frontend/parser.ml"
      
    in
    
# 152 "frontend/parser.mly"
                                               ( l )
# 1242 "frontend/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv549) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_int_expr_list) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1255 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1265 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1274 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
            let (_startpos__4_ : Lexing.position) = _startpos in
            let (_endpos__4_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, l) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos__4_ in
            let _v : 'tv_int_expr = let e =
              let _endpos = _startpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1288 "frontend/parser.ml"
              
            in
            
# 148 "frontend/parser.mly"
    ( AST_expr_call (e, l) )
# 1294 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv530)) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1304 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1313 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1323 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv539 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1336 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv537 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1345 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos__5_ : Lexing.position) = _startpos in
                let (_endpos__5_ : Lexing.position) = _endpos in
                ((let ((((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, l), _startpos__4_, _endpos__4_) = _menhir_stack in
                let _menhir_p0 = () in
                let _startpos = _startpos_x0_ in
                let _endpos = _endpos__5_ in
                let _v : 'tv_stat = let e =
                  let _endpos = _startpos__menhir_p0_ in
                  let x = x0 in
                  
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1359 "frontend/parser.ml"
                  
                in
                
# 282 "frontend/parser.mly"
    ( AST_stat_call (e, l) )
# 1365 "frontend/parser.ml"
                 in
                _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv538)) : 'freshtv540)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv541 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1375 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1386 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | _ ->
        _menhir_fail ()) : 'freshtv550)) : 'freshtv552)) : 'freshtv554)

and _menhir_goto_sign_int_literal : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_sign_int_literal -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv519 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv515 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_MINUS ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_PLUS ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_int _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv516)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv518)) : 'freshtv520)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv527 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv523 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv521 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
            let (_startpos__menhir_p2_ : Lexing.position) = _startpos in
            let (_endpos__menhir_p2_ : Lexing.position) = _endpos in
            ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0), _startpos__menhir_p1_, _endpos__menhir_p1_), _, x1) = _menhir_stack in
            let _menhir_p2 = () in
            let _menhir_p1 = () in
            let _menhir_p0 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__menhir_p2_ in
            let _v : 'tv_int_expr = let e2 =
              let _startpos = _endpos__menhir_p1_ in
              let _endpos = _startpos__menhir_p2_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1458 "frontend/parser.ml"
              
            in
            let e1 =
              let _startpos = _endpos__menhir_p0_ in
              let _endpos = _startpos__menhir_p1_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1468 "frontend/parser.ml"
              
            in
            
# 145 "frontend/parser.mly"
    ( AST_int_rand (e1, e2) )
# 1474 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv522)) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv525 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_ext_stat__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_ext_stat__ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _, xs, _startpos_xs_) = _menhir_stack in
        let _startpos = _startpos_x0_ in
        let _v : 'tv_list_ext_stat__ = let x =
          let _endpos = _startpos_xs_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1504 "frontend/parser.ml"
          
        in
        
# 116 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1510 "frontend/parser.ml"
         in
        _menhir_goto_list_ext_stat__ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv488)) : 'freshtv490)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, l, _startpos_l_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : 'tv_stat = 
# 261 "frontend/parser.mly"
    ( AST_block l )
# 1533 "frontend/parser.ml"
             in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv492)) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv505 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 1548 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv501 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 1558 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv499 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 1566 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__8_ : Lexing.position) = _endpos in
            ((let (((((((_menhir_stack, _menhir_s, _startpos__menhir_p0_, _endpos__menhir_p0_), x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p1_, _endpos__menhir_p1_), _, xs0), _startpos__5_, _endpos__5_), _startpos__6_), _, l, _startpos_l_) = _menhir_stack in
            let _menhir_p1 = () in
            let _menhir_p0 = () in
            let _startpos = _startpos__menhir_p0_ in
            let _endpos = _endpos__8_ in
            let _v : 'tv_fun_decl = let p =
              let xs = xs0 in
              
# 135 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1579 "frontend/parser.ml"
              
            in
            let i =
              let _startpos = _endpos__menhir_p0_ in
              let _endpos = _startpos__menhir_p1_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1589 "frontend/parser.ml"
              
            in
            let _startpos_i_ = _endpos__menhir_p0_ in
            let t =
              let _endpos = _startpos_i_ in
              let x =
                
# 226 "frontend/parser.mly"
             ( None )
# 1599 "frontend/parser.ml"
                
              in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1605 "frontend/parser.ml"
              
            in
            
# 211 "frontend/parser.mly"
  ( { Abstract_syntax_tree.fun_name = i;
      Abstract_syntax_tree.fun_typ = t;
      Abstract_syntax_tree.fun_args = p;
      Abstract_syntax_tree.fun_body = l;
      Abstract_syntax_tree.fun_ext = (_startpos, _endpos); }
  )
# 1616 "frontend/parser.ml"
             in
            _menhir_goto_fun_decl _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv500)) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv503 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 1626 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv513 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1635 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv509 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1645 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv507 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1653 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__8_ : Lexing.position) = _endpos in
            ((let (((((((_menhir_stack, _menhir_s, t00, _startpos_t00_, _endpos_t00_), _, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, xs0), _startpos__5_, _endpos__5_), _startpos__6_), _, l, _startpos_l_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_t00_ in
            let _endpos = _endpos__8_ in
            let _v : 'tv_fun_decl = let p =
              let xs = xs0 in
              
# 135 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1665 "frontend/parser.ml"
              
            in
            let i =
              let _startpos = _endpos_t00_ in
              let _endpos = _startpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1675 "frontend/parser.ml"
              
            in
            let _startpos_i_ = _endpos_t00_ in
            let t =
              let _endpos = _startpos_i_ in
              let t0 = t00 in
              let x =
                let t = t0 in
                
# 225 "frontend/parser.mly"
             ( Some t )
# 1687 "frontend/parser.ml"
                
              in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1693 "frontend/parser.ml"
              
            in
            
# 211 "frontend/parser.mly"
  ( { Abstract_syntax_tree.fun_name = i;
      Abstract_syntax_tree.fun_typ = t;
      Abstract_syntax_tree.fun_args = p;
      Abstract_syntax_tree.fun_body = l;
      Abstract_syntax_tree.fun_ext = (_startpos, _endpos); }
  )
# 1704 "frontend/parser.ml"
             in
            _menhir_goto_fun_decl _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv508)) : 'freshtv510)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv511 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1714 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_list_ext_stat__ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)
    | _ ->
        _menhir_fail ()

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1724 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1751 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1759 "frontend/parser.ml"
    ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
    let (_startpos__menhir_p0_ : Lexing.position) = _startpos in
    let (_endpos__menhir_p0_ : Lexing.position) = _endpos in
    ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
    let _menhir_p0 = () in
    let _startpos = _startpos_x0_ in
    let _endpos = _endpos__menhir_p0_ in
    let _v : 'tv_assign = let e =
      let _endpos = _startpos__menhir_p0_ in
      let x = x0 in
      
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1773 "frontend/parser.ml"
      
    in
    
# 243 "frontend/parser.mly"
    ( AST_increment (e,1) )
# 1779 "frontend/parser.ml"
     in
    _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv486)

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1786 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1813 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1840 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1848 "frontend/parser.ml"
    ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
    let (_startpos__menhir_p0_ : Lexing.position) = _startpos in
    let (_endpos__menhir_p0_ : Lexing.position) = _endpos in
    ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
    let _menhir_p0 = () in
    let _startpos = _startpos_x0_ in
    let _endpos = _endpos__menhir_p0_ in
    let _v : 'tv_assign = let e =
      let _endpos = _startpos__menhir_p0_ in
      let x = x0 in
      
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 1862 "frontend/parser.ml"
      
    in
    
# 246 "frontend/parser.mly"
    ( AST_increment (e,-1); )
# 1868 "frontend/parser.ml"
     in
    _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv484)

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1875 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1902 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 1929 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_stack = (_menhir_stack, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_goto_option_ext_int_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_ext_int_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv481 * _menhir_state * Lexing.position) * _menhir_state * 'tv_option_ext_int_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state * Lexing.position) * _menhir_state * 'tv_option_ext_int_expr__) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * Lexing.position) * _menhir_state * 'tv_option_ext_int_expr__) = Obj.magic _menhir_stack in
        let (_startpos__3_ : Lexing.position) = _startpos in
        let (_endpos__3_ : Lexing.position) = _endpos in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, e) = _menhir_stack in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : 'tv_stat = 
# 285 "frontend/parser.mly"
    ( AST_return e )
# 1977 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv476)) : 'freshtv478)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state * Lexing.position) * _menhir_state * 'tv_option_ext_int_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)

and _menhir_reduce45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ = 
# 57 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1993 "frontend/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_assign___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "frontend/parser.mly"
       (string)
# 2000 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_DIVIDE_EQUAL ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EQUAL ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS_EQUAL ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS_MINUS ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PERCENT_EQUAL ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS_EQUAL ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS_PLUS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_STAR_EQUAL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2030 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    let (_endpos__1_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_bool_expr = 
# 109 "frontend/parser.mly"
    ( AST_bool_const true )
# 2048 "frontend/parser.ml"
     in
    _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv472)

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_BRAND ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EXCLAIM ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_FALSE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LPAREN ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_TRUE ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    let (_endpos__1_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_bool_expr = 
# 112 "frontend/parser.mly"
    ( AST_bool_const false )
# 2096 "frontend/parser.ml"
     in
    _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv470)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_BRAND ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EXCLAIM ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_FALSE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LPAREN ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_TRUE ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    let (_endpos__1_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_bool_expr = 
# 124 "frontend/parser.mly"
    ( AST_bool_rand )
# 2144 "frontend/parser.ml"
     in
    _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv468)

and _menhir_goto_separated_nonempty_list_TOK_COMMA_init_declarator_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState162 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ = 
# 59 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x )
# 2163 "frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * 'tv_init_declarator) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * 'tv_init_declarator) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_) = _v in
        ((let ((_menhir_stack, _menhir_s, x), _startpos__2_, _endpos__2_) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_ = 
# 146 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2179 "frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_TOK_COMMA_init_declarator_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_goto_int_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_int_expr -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos_x1_ in
        let _v : 'tv_int_expr = let e2 =
          let _startpos = _endpos__menhir_p0_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2229 "frontend/parser.ml"
          
        in
        let o =
          
# 169 "frontend/parser.mly"
                     ( AST_MULTIPLY )
# 2236 "frontend/parser.ml"
          
        in
        let _startpos_o_ = _endpos_x0_ in
        let e1 =
          let _endpos = _startpos_o_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2246 "frontend/parser.ml"
          
        in
        
# 141 "frontend/parser.mly"
    ( AST_int_binary (o,e1,e2) )
# 2252 "frontend/parser.ml"
         in
        _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv324)) : 'freshtv326)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_COMMA | TOK_EQUAL_EQUAL | TOK_GREATER | TOK_GREATER_EQUAL | TOK_LESS | TOK_LESS_EQUAL | TOK_MINUS | TOK_NOT_EQUAL | TOK_PLUS | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_int_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2280 "frontend/parser.ml"
              
            in
            let o =
              
# 172 "frontend/parser.mly"
                     ( AST_PLUS )
# 2287 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2297 "frontend/parser.ml"
              
            in
            
# 141 "frontend/parser.mly"
    ( AST_int_binary (o,e1,e2) )
# 2303 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos_x1_ in
        let _v : 'tv_int_expr = let e2 =
          let _startpos = _endpos__menhir_p0_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2328 "frontend/parser.ml"
          
        in
        let o =
          
# 171 "frontend/parser.mly"
                     ( AST_MODULO )
# 2335 "frontend/parser.ml"
          
        in
        let _startpos_o_ = _endpos_x0_ in
        let e1 =
          let _endpos = _startpos_o_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2345 "frontend/parser.ml"
          
        in
        
# 141 "frontend/parser.mly"
    ( AST_int_binary (o,e1,e2) )
# 2351 "frontend/parser.ml"
         in
        _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv334)) : 'freshtv336)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos_x1_ in
        let _v : 'tv_int_expr = let e2 =
          let _startpos = _endpos__menhir_p0_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2369 "frontend/parser.ml"
          
        in
        let o =
          
# 170 "frontend/parser.mly"
                     ( AST_DIVIDE )
# 2376 "frontend/parser.ml"
          
        in
        let _startpos_o_ = _endpos_x0_ in
        let e1 =
          let _endpos = _startpos_o_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2386 "frontend/parser.ml"
          
        in
        
# 141 "frontend/parser.mly"
    ( AST_int_binary (o,e1,e2) )
# 2392 "frontend/parser.ml"
         in
        _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv338)) : 'freshtv340)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_COMMA | TOK_EQUAL_EQUAL | TOK_GREATER | TOK_GREATER_EQUAL | TOK_LESS | TOK_LESS_EQUAL | TOK_MINUS | TOK_NOT_EQUAL | TOK_PLUS | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_int_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2420 "frontend/parser.ml"
              
            in
            let o =
              
# 173 "frontend/parser.mly"
                     ( AST_MINUS )
# 2427 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2437 "frontend/parser.ml"
              
            in
            
# 141 "frontend/parser.mly"
    ( AST_int_binary (o,e1,e2) )
# 2443 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_COMMA | TOK_EQUAL_EQUAL | TOK_GREATER | TOK_GREATER_EQUAL | TOK_LESS | TOK_LESS_EQUAL | TOK_MINUS | TOK_NOT_EQUAL | TOK_PLUS | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos__menhir_p0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_int_expr = let e =
              let _startpos = _endpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2478 "frontend/parser.ml"
              
            in
            let o =
              
# 163 "frontend/parser.mly"
                     ( AST_UNARY_MINUS )
# 2485 "frontend/parser.ml"
              
            in
            
# 138 "frontend/parser.mly"
    ( AST_int_unary (o,e) )
# 2491 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_COMMA | TOK_EQUAL_EQUAL | TOK_GREATER | TOK_GREATER_EQUAL | TOK_LESS | TOK_LESS_EQUAL | TOK_MINUS | TOK_NOT_EQUAL | TOK_PLUS | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos__menhir_p0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_int_expr = let e =
              let _startpos = _endpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2526 "frontend/parser.ml"
              
            in
            let o =
              
# 162 "frontend/parser.mly"
                     ( AST_UNARY_PLUS )
# 2533 "frontend/parser.ml"
              
            in
            
# 138 "frontend/parser.mly"
    ( AST_int_unary (o,e) )
# 2539 "frontend/parser.ml"
             in
            _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState63 | MenhirState52 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_LPAREN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_MINUS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_PLUS ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_RAND ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_id _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_int _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv360)
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_separated_nonempty_list_TOK_COMMA_ext_int_expr__ = let x =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2601 "frontend/parser.ml"
              
            in
            
# 144 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2607 "frontend/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_TOK_COMMA_ext_int_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv371 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2622 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2642 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2654 "frontend/parser.ml"
              
            in
            let o =
              
# 176 "frontend/parser.mly"
                           ( AST_MULTIPLY )
# 2661 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2671 "frontend/parser.ml"
              
            in
            
# 240 "frontend/parser.mly"
    ( AST_assign_op (e, o, f) )
# 2677 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2687 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2696 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2716 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2728 "frontend/parser.ml"
              
            in
            let o =
              
# 179 "frontend/parser.mly"
                           ( AST_PLUS )
# 2735 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2745 "frontend/parser.ml"
              
            in
            
# 240 "frontend/parser.mly"
    ( AST_assign_op (e, o, f) )
# 2751 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2761 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2770 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2790 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2802 "frontend/parser.ml"
              
            in
            let o =
              
# 178 "frontend/parser.mly"
                           ( AST_MODULO )
# 2809 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2819 "frontend/parser.ml"
              
            in
            
# 240 "frontend/parser.mly"
    ( AST_assign_op (e, o, f) )
# 2825 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2835 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2844 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2864 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2876 "frontend/parser.ml"
              
            in
            let o =
              
# 180 "frontend/parser.mly"
                           ( AST_MINUS )
# 2883 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2893 "frontend/parser.ml"
              
            in
            
# 240 "frontend/parser.mly"
    ( AST_assign_op (e, o, f) )
# 2899 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2909 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2918 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2938 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2950 "frontend/parser.ml"
              
            in
            let e =
              let _endpos = _startpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 2959 "frontend/parser.ml"
              
            in
            
# 237 "frontend/parser.mly"
    ( AST_assign (e, f) )
# 2965 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2975 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv401 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 2984 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv397 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3004 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_assign = let f =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3016 "frontend/parser.ml"
              
            in
            let o =
              
# 177 "frontend/parser.mly"
                           ( AST_DIVIDE )
# 3023 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3033 "frontend/parser.ml"
              
            in
            
# 240 "frontend/parser.mly"
    ( AST_assign_op (e, o, f) )
# 3039 "frontend/parser.ml"
             in
            _menhir_goto_assign _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3049 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState121 | MenhirState129 | MenhirState109 | MenhirState73 | MenhirState98 | MenhirState96 | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_EQUAL_EQUAL ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_GREATER ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_GREATER_EQUAL ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LESS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LESS_EQUAL ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_NOT_EQUAL ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3117 "frontend/parser.ml"
              
            in
            let o =
              
# 188 "frontend/parser.mly"
                     ( AST_NOT_EQUAL )
# 3124 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3134 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3140 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3179 "frontend/parser.ml"
              
            in
            let o =
              
# 185 "frontend/parser.mly"
                     ( AST_LESS_EQUAL )
# 3186 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3196 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3202 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv423 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3241 "frontend/parser.ml"
              
            in
            let o =
              
# 183 "frontend/parser.mly"
                     ( AST_LESS )
# 3248 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3258 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3264 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv425 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3303 "frontend/parser.ml"
              
            in
            let o =
              
# 186 "frontend/parser.mly"
                     ( AST_GREATER_EQUAL )
# 3310 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3320 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3326 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3365 "frontend/parser.ml"
              
            in
            let o =
              
# 184 "frontend/parser.mly"
                     ( AST_GREATER )
# 3372 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3382 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3388 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_AND_AND | TOK_BAR_BAR | TOK_RPAREN | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_bool_expr = let e2 =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3427 "frontend/parser.ml"
              
            in
            let o =
              
# 187 "frontend/parser.mly"
                     ( AST_EQUAL )
# 3434 "frontend/parser.ml"
              
            in
            let _startpos_o_ = _endpos_x0_ in
            let e1 =
              let _endpos = _startpos_o_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3444 "frontend/parser.ml"
              
            in
            
# 121 "frontend/parser.mly"
    ( AST_compare (o,e1,e2) )
# 3450 "frontend/parser.ml"
             in
            _menhir_goto_bool_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_EQUAL_EQUAL ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_GREATER ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_GREATER_EQUAL ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LESS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LESS_EQUAL ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_NOT_EQUAL ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv443 * _menhir_state * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_option_ext_int_expr__ = let x =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3524 "frontend/parser.ml"
              
            in
            
# 31 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 3530 "frontend/parser.ml"
             in
            _menhir_goto_option_ext_int_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3545 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_DIVIDE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PERCENT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_STAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_COMMA | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3565 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_init_declarator = let i =
              let _startpos = _endpos__menhir_p0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3577 "frontend/parser.ml"
              
            in
            let v =
              let _endpos = _startpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3586 "frontend/parser.ml"
              
            in
            
# 205 "frontend/parser.mly"
                                            ( v, Some i )
# 3592 "frontend/parser.ml"
             in
            _menhir_goto_init_declarator _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3602 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_reduce47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ = 
# 57 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3614 "frontend/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_ext_int_expr___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "frontend/parser.mly"
       (string)
# 3621 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 69 "frontend/parser.mly"
       (string)
# 3631 "frontend/parser.ml"
    )) = _v in
    let (_startpos_i_ : Lexing.position) = _startpos in
    let (_endpos_i_ : Lexing.position) = _endpos in
    ((let _v : 'tv_sign_int_literal = 
# 157 "frontend/parser.mly"
                       ( i )
# 3638 "frontend/parser.ml"
     in
    _menhir_goto_sign_int_literal _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_int _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 69 "frontend/parser.mly"
       (string)
# 3654 "frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (i : (
# 69 "frontend/parser.mly"
       (string)
# 3664 "frontend/parser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        let (_endpos_i_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_, _endpos__1_) = _menhir_stack in
        let _v : 'tv_sign_int_literal = 
# 158 "frontend/parser.mly"
                       ( i )
# 3672 "frontend/parser.ml"
         in
        _menhir_goto_sign_int_literal _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_int _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 69 "frontend/parser.mly"
       (string)
# 3695 "frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (i : (
# 69 "frontend/parser.mly"
       (string)
# 3705 "frontend/parser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        let (_endpos_i_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_, _endpos__1_) = _menhir_stack in
        let _v : 'tv_sign_int_literal = 
# 159 "frontend/parser.mly"
                       ( "-"^i )
# 3713 "frontend/parser.ml"
         in
        _menhir_goto_sign_int_literal _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_toplevel -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_toplevel * Lexing.position) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EOF ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv304)

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stat -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    match _menhir_s with
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv283 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv281 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_, _endpos__2_), _, a), _startpos__4_, _endpos__4_), _, b), _startpos__6_, _endpos__6_), _, c), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x0_ in
        let _v : 'tv_stat = let s =
          let _startpos = _endpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3762 "frontend/parser.ml"
          
        in
        
# 273 "frontend/parser.mly"
    ( AST_for (a,b,c,s) )
# 3768 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv282)) : 'freshtv284)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv291 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv285 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_ASSERT ->
                _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_BREAK ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_FOR ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_GOTO ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_IF ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LCURLY ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_RETURN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_SEMICOLON ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_WHILE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TOK_id _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv286)
        | TOK_ASSERT | TOK_BREAK | TOK_FOR | TOK_GOTO | TOK_IF | TOK_INT | TOK_LCURLY | TOK_RCURLY | TOK_RETURN | TOK_SEMICOLON | TOK_WHILE | TOK_id _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv287 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p1_, _endpos__menhir_p1_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
            let _menhir_p1 = () in
            let _menhir_p0 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_stat = let s =
              let _startpos = _endpos__menhir_p1_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3826 "frontend/parser.ml"
              
            in
            let e =
              let _startpos = _endpos__menhir_p0_ in
              let _endpos = _startpos__menhir_p1_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3836 "frontend/parser.ml"
              
            in
            
# 264 "frontend/parser.mly"
    ( AST_if (e, s, None) )
# 3842 "frontend/parser.ml"
             in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv289 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv295 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv293 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p1_, _endpos__menhir_p1_), _, x1, _startpos_x1_, _endpos_x1_), _startpos__menhir_p2_, _endpos__menhir_p2_), _, x2, _startpos_x2_, _endpos_x2_) = _menhir_stack in
        let _menhir_p2 = () in
        let _menhir_p1 = () in
        let _menhir_p0 = () in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x2_ in
        let _v : 'tv_stat = let t =
          let _startpos = _endpos__menhir_p2_ in
          let x = x2 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3869 "frontend/parser.ml"
          
        in
        let s =
          let _startpos = _endpos__menhir_p1_ in
          let _endpos = _startpos__menhir_p2_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3879 "frontend/parser.ml"
          
        in
        let e =
          let _startpos = _endpos__menhir_p0_ in
          let _endpos = _startpos__menhir_p1_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3889 "frontend/parser.ml"
          
        in
        
# 267 "frontend/parser.mly"
    ( AST_if (e, s, Some t) )
# 3895 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv294)) : 'freshtv296)
    | MenhirState167 | MenhirState13 | MenhirState154 | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_ASSERT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_BREAK ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_FOR ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_GOTO ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_IF ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_INT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LCURLY ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_RETURN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_SEMICOLON ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_WHILE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_id _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RCURLY ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv298)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv301 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv299 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__menhir_p0_, _endpos__menhir_p0_), _, x0, _startpos_x0_, _endpos_x0_), _startpos__menhir_p1_, _endpos__menhir_p1_), _, x1, _startpos_x1_, _endpos_x1_) = _menhir_stack in
        let _menhir_p1 = () in
        let _menhir_p0 = () in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x1_ in
        let _v : 'tv_stat = let s =
          let _startpos = _endpos__menhir_p1_ in
          let x = x1 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3948 "frontend/parser.ml"
          
        in
        let e =
          let _startpos = _endpos__menhir_p0_ in
          let _endpos = _startpos__menhir_p1_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 3958 "frontend/parser.ml"
          
        in
        
# 270 "frontend/parser.mly"
    ( AST_while (e, s) )
# 3964 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv300)) : 'freshtv302)
    | _ ->
        _menhir_fail ()

and _menhir_reduce41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
    let _v : 'tv_list_ext_stat__ = 
# 114 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3976 "frontend/parser.ml"
     in
    _menhir_goto_list_ext_stat__ _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "frontend/parser.mly"
       (string)
# 3983 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 3995 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4004 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos__menhir_p0_ : Lexing.position) = _startpos in
        let (_endpos__menhir_p0_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
        let _menhir_p0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos__menhir_p0_ in
        let _v : 'tv_stat = let e =
          let _endpos = _startpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4018 "frontend/parser.ml"
          
        in
        
# 294 "frontend/parser.mly"
    ( AST_label e )
# 4024 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv274)) : 'freshtv276)
    | TOK_DIVIDE_EQUAL ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EQUAL ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4036 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RAND ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_id _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv278)
    | TOK_MINUS_EQUAL ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS_MINUS ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PERCENT_EQUAL ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS_EQUAL ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS_PLUS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_STAR_EQUAL ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4081 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_BRAND ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_EXCLAIM ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_FALSE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LPAREN ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RAND ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_TRUE ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_id _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv270)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    let (_endpos__1_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_stat = 
# 288 "frontend/parser.mly"
    ( AST_SKIP )
# 4146 "frontend/parser.ml"
     in
    _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv268)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState103 in
        ((let _v : 'tv_option_ext_int_expr__ = 
# 29 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( None )
# 4175 "frontend/parser.ml"
         in
        _menhir_goto_option_ext_int_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_ASSERT ->
        _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_BREAK ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_FOR ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_GOTO ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_IF ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_LCURLY ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_RETURN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_SEMICOLON ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_WHILE ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RCURLY ->
        _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_BRAND ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_EXCLAIM ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_FALSE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LPAREN ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RAND ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_TRUE ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_id _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv262)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)

and _menhir_run112 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_id _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 68 "frontend/parser.mly"
       (string)
# 4277 "frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4290 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4299 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos__menhir_p1_ : Lexing.position) = _startpos in
            let (_endpos__menhir_p1_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__menhir_p0_, _endpos__menhir_p0_), x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _menhir_p1 = () in
            let _menhir_p0 = () in
            let _startpos = _startpos__menhir_p0_ in
            let _endpos = _endpos__menhir_p1_ in
            let _v : 'tv_stat = let e =
              let _startpos = _endpos__menhir_p0_ in
              let _endpos = _startpos__menhir_p1_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4315 "frontend/parser.ml"
              
            in
            
# 291 "frontend/parser.mly"
    ( AST_goto e )
# 4321 "frontend/parser.ml"
             in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv252)) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4331 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_SEMICOLON ->
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv248)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)

and _menhir_run126 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos__menhir_p0_ : Lexing.position) = _startpos in
        let (_endpos__menhir_p0_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, _menhir_s, _startpos_x0_) = _menhir_stack in
        let _menhir_p0 = () in
        let x0 = () in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos__menhir_p0_ in
        let _v : 'tv_stat = let e =
          let _endpos = _startpos__menhir_p0_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4401 "frontend/parser.ml"
          
        in
        
# 279 "frontend/parser.mly"
    ( AST_break e )
# 4407 "frontend/parser.ml"
         in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv242)) : 'freshtv244)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)

and _menhir_run128 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_BRAND ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_EXCLAIM ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_FALSE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_LPAREN ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RAND ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_TRUE ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_id _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv238)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)

and _menhir_goto_init_declarator : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_init_declarator -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_init_declarator) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_init_declarator) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv230)
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_init_declarator) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_TOK_COMMA_init_declarator_ = 
# 144 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 4495 "frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_TOK_COMMA_init_declarator_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_init_declarator) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "frontend/parser.mly"
       (string)
# 4509 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x0 : (
# 69 "frontend/parser.mly"
       (string)
# 4519 "frontend/parser.ml"
    )) = _v in
    let (_startpos_x0_ : Lexing.position) = _startpos in
    let (_endpos_x0_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos_x0_ in
    let _endpos = _endpos_x0_ in
    let _v : 'tv_int_expr = let e =
      let x = x0 in
      
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4530 "frontend/parser.ml"
      
    in
    
# 132 "frontend/parser.mly"
    ( AST_int_const e )
# 4536 "frontend/parser.ml"
     in
    _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv228)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "frontend/parser.mly"
       (string)
# 4543 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4555 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RAND ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TOK_id _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_RPAREN ->
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv222)
    | TOK_AND_AND | TOK_BAR_BAR | TOK_COMMA | TOK_DIVIDE | TOK_EQUAL_EQUAL | TOK_GREATER | TOK_GREATER_EQUAL | TOK_LESS | TOK_LESS_EQUAL | TOK_MINUS | TOK_NOT_EQUAL | TOK_PERCENT | TOK_PLUS | TOK_RPAREN | TOK_SEMICOLON | TOK_STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4586 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos_x0_ in
        let _v : 'tv_int_expr = let e =
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4596 "frontend/parser.ml"
          
        in
        
# 135 "frontend/parser.mly"
    ( AST_int_identifier e )
# 4602 "frontend/parser.ml"
         in
        _menhir_goto_int_expr _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv224)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4612 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_PLUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_int _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv218)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__) = Obj.magic _menhir_stack in
        let (_startpos__3_ : Lexing.position) = _startpos in
        let (_endpos__3_ : Lexing.position) = _endpos in
        ((let ((_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_), _, xs0) = _menhir_stack in
        let _startpos = _startpos_x0_ in
        let _endpos = _endpos__3_ in
        let _v : 'tv_var_decl = let i =
          let xs = xs0 in
          
# 135 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 4745 "frontend/parser.ml"
          
        in
        let _startpos_i_ = _endpos_x0_ in
        let s =
          let _endpos = _startpos_i_ in
          let x = x0 in
          
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4755 "frontend/parser.ml"
          
        in
        
# 201 "frontend/parser.mly"
  ( s, i )
# 4761 "frontend/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_var_decl) = _v in
        let (_startpos : Lexing.position) = _startpos in
        let (_endpos : Lexing.position) = _endpos in
        ((match _menhir_s with
        | MenhirState167 | MenhirState13 | MenhirState101 | MenhirState154 | MenhirState107 | MenhirState152 | MenhirState111 | MenhirState125 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_var_decl) = _v in
            let (_startpos : Lexing.position) = _startpos in
            let (_endpos : Lexing.position) = _endpos in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (x0 : 'tv_var_decl) = _v in
            let (_startpos_x0_ : Lexing.position) = _startpos in
            let (_endpos_x0_ : Lexing.position) = _endpos in
            ((let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_stat = let d =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4790 "frontend/parser.ml"
              
            in
            
# 258 "frontend/parser.mly"
    ( AST_local_decl d )
# 4796 "frontend/parser.ml"
             in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v _startpos _endpos) : 'freshtv200)) : 'freshtv202)
        | MenhirState170 | MenhirState0 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_var_decl) = _v in
            let (_startpos : Lexing.position) = _startpos in
            let (_endpos : Lexing.position) = _endpos in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (x0 : 'tv_var_decl) = _v in
            let (_startpos_x0_ : Lexing.position) = _startpos in
            let (_endpos_x0_ : Lexing.position) = _endpos in
            ((let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x0_ in
            let _v : 'tv_toplevel = let d =
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 4819 "frontend/parser.ml"
              
            in
            
# 96 "frontend/parser.mly"
                            ( AST_global_decl d )
# 4825 "frontend/parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv204)) : 'freshtv206)
        | _ ->
            _menhir_fail ()) : 'freshtv208)) : 'freshtv210)) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)

and _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_param_decl__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv187 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4847 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4857 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_LCURLY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv179 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4870 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TOK_ASSERT ->
                    _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_BREAK ->
                    _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_FOR ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_GOTO ->
                    _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_IF ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_LCURLY ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_RETURN ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_SEMICOLON ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_WHILE ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_id _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_RCURLY ->
                    _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv180)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv181 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4912 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 4923 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4932 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4942 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_LCURLY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv189 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4955 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TOK_ASSERT ->
                    _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_BREAK ->
                    _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_FOR ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_GOTO ->
                    _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_IF ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_LCURLY ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_RETURN ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_SEMICOLON ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_WHILE ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TOK_id _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_RCURLY ->
                    _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv190)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv191 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 4997 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv195 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5008 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_toplevel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_toplevel_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_toplevel * Lexing.position) * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_toplevel * Lexing.position) * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x, _startpos_x_), _, xs, _startpos_xs_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _v : 'tv_list_toplevel_ = 
# 116 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 5029 "frontend/parser.ml"
         in
        _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv162)) : 'freshtv164)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos__menhir_p0_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_) = _menhir_stack in
            let _menhir_p0 = () in
            let _startpos = _startpos_x0_ in
            let _v : (
# 84 "frontend/parser.mly"
      (Abstract_syntax_tree.toplevel list Abstract_syntax_tree.ext)
# 5051 "frontend/parser.ml"
            ) = let t =
              let _endpos = _startpos__menhir_p0_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 5058 "frontend/parser.ml"
              
            in
            
# 93 "frontend/parser.mly"
                                    ( t )
# 5064 "frontend/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 84 "frontend/parser.mly"
      (Abstract_syntax_tree.toplevel list Abstract_syntax_tree.ext)
# 5072 "frontend/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 84 "frontend/parser.mly"
      (Abstract_syntax_tree.toplevel list Abstract_syntax_tree.ext)
# 5080 "frontend/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 84 "frontend/parser.mly"
      (Abstract_syntax_tree.toplevel list Abstract_syntax_tree.ext)
# 5088 "frontend/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv166)) : 'freshtv168)) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_list_toplevel_ * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce26 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5109 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
    let _startpos = _startpos_x0_ in
    let _endpos = _endpos_x0_ in
    let _v : 'tv_init_declarator = let v =
      let x = x0 in
      
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 5120 "frontend/parser.ml"
      
    in
    
# 204 "frontend/parser.mly"
                                            ( v, None )
# 5126 "frontend/parser.ml"
     in
    _menhir_goto_init_declarator _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__ = 
# 57 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 5135 "frontend/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_param_decl__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run136 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5142 "frontend/parser.ml"
) * Lexing.position * Lexing.position -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_LPAREN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_MINUS ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_PLUS ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_RAND ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TOK_id _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_int _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136

and _menhir_reduce49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ = 
# 57 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 5171 "frontend/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_init_declarator__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run135 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "frontend/parser.mly"
       (string)
# 5178 "frontend/parser.ml"
) -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_EQUAL ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_COMMA | TOK_SEMICOLON ->
        _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5196 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)

and _menhir_goto_separated_nonempty_list_TOK_COMMA_param_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_TOK_COMMA_param_decl_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState164 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__ = 
# 59 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x )
# 5216 "frontend/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_TOK_COMMA_param_decl__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_param_decl) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_param_decl) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_) = _v in
        ((let ((_menhir_stack, _menhir_s, x), _startpos__2_, _endpos__2_) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_ = 
# 146 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 5232 "frontend/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_TOK_COMMA_param_decl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_toplevel * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv45 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5251 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5260 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv53 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_stat * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_assign * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_init_declarator) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5294 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv65 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv67 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) * _menhir_state * 'tv_option_ext_bool_expr__) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_assign_list) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv81 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_bool_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5413 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5422 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5431 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5440 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5449 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5458 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_int_expr * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv135 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_sign_int_literal) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5522 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5531 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv143 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 5540 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_TOK_COMMA_param_decl__) * Lexing.position * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_param_decl) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 5554 "frontend/parser.ml"
        ) * Lexing.position * Lexing.position) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _, _), _, _, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv150)

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
    let _v : 'tv_list_toplevel_ = 
# 114 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 5569 "frontend/parser.ml"
     in
    _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos, _endpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_id _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 68 "frontend/parser.mly"
       (string)
# 5585 "frontend/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 5598 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_INT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_RPAREN ->
                _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state * Lexing.position * Lexing.position) * (
# 68 "frontend/parser.mly"
       (string)
# 5621 "frontend/parser.ml"
            ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    let (_endpos__1_ : Lexing.position) = _endpos in
    ((let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_typ = 
# 222 "frontend/parser.mly"
             ( AST_TYP_INT )
# 5646 "frontend/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_typ) = _v in
    let (_startpos : Lexing.position) = _startpos in
    let (_endpos : Lexing.position) = _endpos in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
    match _menhir_s with
    | MenhirState164 | MenhirState9 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 68 "frontend/parser.mly"
       (string)
# 5668 "frontend/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (x1 : (
# 68 "frontend/parser.mly"
       (string)
# 5678 "frontend/parser.ml"
            )) = _v in
            let (_startpos_x1_ : Lexing.position) = _startpos in
            let (_endpos_x1_ : Lexing.position) = _endpos in
            ((let (_menhir_stack, _menhir_s, x0, _startpos_x0_, _endpos_x0_) = _menhir_stack in
            let _startpos = _startpos_x0_ in
            let _endpos = _endpos_x1_ in
            let _v : 'tv_param_decl = let v =
              let _startpos = _endpos_x0_ in
              let x = x1 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 5691 "frontend/parser.ml"
              
            in
            let _startpos_v_ = _endpos_x0_ in
            let s =
              let _endpos = _startpos_v_ in
              let x = x0 in
              
# 303 "frontend/parser.mly"
      ( x, (_startpos, _endpos) )
# 5701 "frontend/parser.ml"
              
            in
            
# 219 "frontend/parser.mly"
                           ( s, v )
# 5707 "frontend/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_param_decl) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9 * _menhir_state * 'tv_param_decl) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv3 * _menhir_state * 'tv_param_decl) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TOK_INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv4)
            | TOK_RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv5 * _menhir_state * 'tv_param_decl) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_TOK_COMMA_param_decl_ = 
# 144 "/home/cyru/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 5741 "frontend/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_TOK_COMMA_param_decl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv7 * _menhir_state * 'tv_param_decl) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)) : 'freshtv16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)
    | MenhirState167 | MenhirState13 | MenhirState101 | MenhirState154 | MenhirState107 | MenhirState152 | MenhirState111 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | TOK_SEMICOLON ->
            _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv22)
    | MenhirState170 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TOK_id _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState162 in
            let (_v : (
# 68 "frontend/parser.mly"
       (string)
# 5785 "frontend/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TOK_EQUAL ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
            | TOK_LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5800 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_stack = (_menhir_stack, _startpos, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TOK_INT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | TOK_RPAREN ->
                    _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv24)
            | TOK_COMMA | TOK_SEMICOLON ->
                _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_typ * Lexing.position * Lexing.position) * _menhir_state * (
# 68 "frontend/parser.mly"
       (string)
# 5825 "frontend/parser.ml"
                ) * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
        | TOK_SEMICOLON ->
            _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv30)
    | _ ->
        _menhir_fail ()) : 'freshtv32)) : 'freshtv34)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
      }

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 84 "frontend/parser.mly"
      (Abstract_syntax_tree.toplevel list Abstract_syntax_tree.ext)
# 5853 "frontend/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
        }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = () in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TOK_INT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_VOID ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | TOK_EOF ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))





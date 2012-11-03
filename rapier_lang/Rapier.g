grammar Rapier;

options {language = Ruby;}

tokens {
  PLUS='+';MINUS='-';MULT='*';DIV='/';LPAR='(';RPAR=')';LKEY='{';RKEY='}';GRTH='>';LSTH='<';GRTHE='>=';LSTHE='<=';AND ='&';OR='|';EQLS='=';QTS ='"';PROGRAM='program';MAIN='main';IF='if';
}
@lexer::init{}
@parser::init{
  @pOper = []
  @pilaO = []
  @pilaS = []
  @cuadruplos = []
  @tab_var = {}
  @counter = 0
  require_relative 'CUB.rb'
  require_relative 'CUA.rb'
  require_relative 'AGC.rb'
  require_relative 'DIR.rb'
}

prog    : PROGRAM bloq {agc_8} ;
bloq    : LKEY est* RKEY ;
est     : (dclr | asign | comp | sIf ) ;
sIf     : IF LPAR comp RPAR {agc_4} bloq {agc_5} ;
dclr    : 'var' b=type a=ID {agc_1(a,b)} ('='  {agc_2('=')} comp {agc_3(['='])})? ;
asign   : a=ID EQLS {agc_2('=')}{agc_1(a)} comp {agc_3(['='])} ;
comp    : (expr   {agc_3(['<','>','>=','<='])})((( LSTHE {agc_2('<=')}|  GRTHE {agc_2('<=')}|  LSTH {agc_2('<')}| GRTH  {agc_2('>')}))(expr   {agc_3(['<','>','>=','<='])}))* ;
expr    : (term   {agc_3(['+','-'])})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))(term   {agc_3(['+','-'])}))* ;
term    : (factor {agc_3(['*','/'])})((( MULT {agc_2('*')}| DIV   {agc_2('/')}))(factor {agc_3(['*','/'])}))* ;
factor  : elem | LPAR {agc_1('(')} expr RPAR {agc_3} ;
elem    : a=NUMBER {agc_1(a, 'int')}| a=FLOAT {agc_1(a, 'float')}| a=BOOL {agc_1(a, 'boolean')}| a=STRING {agc_1(a, 'string')}| a=ID {agc_1(a)} ;
type returns [string t] : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

/*
prog  ::= 'main' bloq
bloq  ::= '{' est* '}'
est   ::= (dclr | asign | comp | sIf )
sIf   ::= 'if' '(' comp ')' "#4" bloq "#5"
dclr  ::= 'var' type id "#3" ('=' "#2"} comp "#3")?
asign ::= ID '=' "#2" "#1" comp "#3"
comp  ::= (expr   "#3")((( '<' "#2"| '>' "#2"))(expr "#3"))*

*/


NUMBER  : '0'..'9'+ ;
FLOAT   : '0'..'9'+ '.' '0'..'9'+ ;
BOOL    : 'true' | 'false' ;
ID      : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* ;
WS      : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};
STRING: QTS (~'\n')* QTS;

grammar Rapier;

options {language = Ruby;}

tokens {
  PLUS='+';MINUS='-';MULT='*';DIV='/';LPAR='(';RPAR=')';LKEY='{';RKEY='}';GRTH='>';LSTH='<';GRTHE='>=';LSTHE='<=';AND ='&';OR='|';EQLS='=';QTS ='"';PROGRAM='program';IF='if';ELSE='else';OUT='out';IN='in';
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
}

prog    : PROGRAM LKEY fun* RKEY  {agc_8} ;
fun     : b=type ':' a=ID LPAR RPAR bloq ;
bloq    : LKEY est* RKEY ;
est     : (dclr | asign | comp | sIf | prt | red) ;
prt     : OUT LPAR comp RPAR {agc_3('out')} ;
red     : IN LPAR comp RPAR {agc_3('in')} ;
sIf     : IF LPAR comp RPAR {agc_4('if')} bloq {agc_5('if')} {agc_4('else')} (ELSE bloq)? {agc_5('else')} ;
dclr    : 'var' b=type a=ID {agc_1(a,b,true)} ('='  {agc_2('=')} comp {agc_3('=')})? ;
asign   : a=ID {agc_1(a)} EQLS {agc_2('=')} comp {agc_3('=')} ;
comp    : (expr   {agc_3(['<','>','>=','<='])})((( LSTHE {agc_2('<=')}|  GRTHE {agc_2('<=')}|  LSTH {agc_2('<')}| GRTH  {agc_2('>')}))(expr   {agc_3(['<','>','>=','<='])}))* ;
expr    : (term   {agc_3(['+','-'])})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))(term   {agc_3(['+','-'])}))* ;
term    : (factor {agc_3(['*','/'])})((( MULT {agc_2('*')}| DIV   {agc_2('/')}))(factor {agc_3(['*','/'])}))* ;
factor  : elem | LPAR {agc_2('(')} expr RPAR {agc_3} ;
elem    : a=NUMBER {agc_1(a, 'int')}| a=FLOAT {agc_1(a, 'float')}| a=BOOL {agc_1(a, 'boolean')}| a=STRING {agc_1(a, 'string')}| a=ID {agc_1(a)} ;
type returns [string t] : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

BOOL    : 'true' | 'false' ;
NUMBER  : '-'? INTEGER+ ;
FLOAT   : '-'? INTEGER+ '.' INTEGER+;
ID: LETTER (LETTER | DIGIT | '_')*;
STRING: '"' NONCONTROL_CHAR* '"';
fragment NONCONTROL_CHAR: LETTER | DIGIT | SYMBOL | SPACE;
fragment LETTER: LOWER | UPPER;
fragment INTEGER: '0'..'9' ;
fragment LOWER: 'a'..'z';
fragment UPPER: 'A'..'Z';
fragment DIGIT: '0'..'9';
fragment SPACE: ' ' | '\t';
fragment SYMBOL: '!' | '#'..'/' | ':'..'@' | '['..'`' | '{'..'~';
WS : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};

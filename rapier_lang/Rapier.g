grammar Rapier;

options {language = Ruby;}

tokens {
  PLUS    ='+';
  MINUS   ='-';
  MULT    ='*';
  DIV     ='/';
  LPAR    ='(';
  RPAR    =')';
  GRTH    ='>';
  LSTH    ='<';
  EQLS    ='=';
  QTS     ='"';
}
@lexer::init{}
@parser::init{
  @pOper = []
  @pilaO = []
  @pilaS = []
  @cuadruplos = []
  require_relative 'Cuadruplo.rb'
  require_relative 'AGCs.rb'
}

prog    : est* {agc_8} ;
est     : (dclr | asign | comp ) ;
dclr    : 'var' b=type a=ID {agc_1(a,b)} ('='  {agc_2('=')} comp {agc_6})? ;
asign   : a=ID EQLS {agc_2('=')}{agc_1(a)} comp {agc_6} ;
comp    : (expr {agc_5})((( LSTH {agc_2('<')}| GRTH {agc_2('>')}))  (expr  {agc_5}))* ;
expr    : (term {agc_4})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))  (term  {agc_4}))* ;
term    : (factor {agc_3}) ((( MULT {agc_2('*')}| DIV {agc_2('/')})) (factor {agc_3}) )* ;
factor  : elem | LPAR {agc_1('(')} expr RPAR {agc_7} ;
elem    : a=NUMBER {agc_1(a, 'int')} | a=ID {agc_1(a, 'var')} | a=STRING {agc_1(a, 'string')} ;
type returns [string t]   : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

ID      : 'a'..'z' ;
NUMBER  : (DIGIT)+ ;
WS      : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};
STRING: QTS (~'\n')* QTS;
fragment DIGIT  : '0'..'9';

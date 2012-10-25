grammar Rapier;

options {language = Ruby;}

tokens {
  PLUS    ='+';
  MINUS   ='-';
  MULT    ='*';
  DIV     ='/';
  LPAR    ='(';
  RPAR    =')';
  LKEY    ='{';
  RKEY    ='}';
  GRTH    ='>';
  LSTH    ='<';
  AND     ='&';
  OR      ='|';
  EQLS    ='=';
  QTS     ='"';
  MAIN    ='main';
  IF      ='if';
}
@lexer::init{}
@parser::init{
  @pOper = []
  @pilaO = []
  @pilaS = []
  @cuadruplos = []
  @counter = 0
  require_relative 'Cuadruplo.rb'
  require_relative 'AGCs.rb'
}

prog    : MAIN bloq {agc_8} ;
bloq    : LKEY est* RKEY ;
est     : (dclr | asign | comp | sIf ) ;
sIf     : IF LPAR comp RPAR bloq ;
dclr    : 'var' b=type a=ID {agc_1(a,b)} ('='  {agc_2('=')} comp {agc_0})? ;
asign   : a=ID EQLS {agc_2('=')}{agc_1(a)} comp {agc_0} ;
comp    : (expr {agc_0(['<','>'])})((( LSTH {agc_2('<')}| GRTH {agc_2('>')}))  (expr  {agc_0(['<','>'])}))* ;
expr    : (term {agc_0(['+','-'])})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))  (term  {agc_0(['+','-'])}))* ;
term    : (factor {agc_0(['*','/'])}) ((( MULT {agc_2('*')}| DIV {agc_2('/')})) (factor {agc_0(['*','/'])}) )* ;
factor  : elem | LPAR {agc_1('(')} expr RPAR {agc_0} ;
elem    : a=NUMBER {agc_1(a, 'int')} | a=ID {agc_1(a, 'var')} | a=STRING {agc_1(a, 'string')} ;
type returns [string t]   : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

ID      : 'a'..'z' ;
NUMBER  : (DIGIT)+ ;
WS      : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};
STRING: QTS (~'\n')* QTS;
fragment DIGIT  : '0'..'9';

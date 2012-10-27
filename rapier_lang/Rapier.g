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
  require_relative 'CUA.rb'
  require_relative 'AGC.rb'
  require_relative 'DIR.rb'
}

prog    : MAIN bloq {agc_8} ;
bloq    : LKEY est* RKEY ;
est     : (dclr | asign | comp | sIf ) ;
sIf     : IF LPAR comp RPAR {agc_4} bloq {agc_5} ;
dclr    : 'var' b=type a=ID {agc_1(a,b)} ('='  {agc_2('=')} comp {agc_3})? ;
asign   : a=ID EQLS {agc_2('=')}{agc_1(a)} comp {agc_3} ;
comp    : (expr {agc_3(['<','>'])})((( LSTH {agc_2('<')}| GRTH {agc_2('>')}))  (expr  {agc_3(['<','>'])}))* ;
expr    : (term {agc_3(['+','-'])})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))  (term  {agc_3(['+','-'])}))* ;
term    : (factor {agc_3(['*','/'])}) ((( MULT {agc_2('*')}| DIV {agc_2('/')})) (factor {agc_3(['*','/'])}) )* ;
factor  : elem | LPAR {agc_1('(')} expr RPAR {agc_3} ;
elem    : a=NUMBER {agc_1(a, 'int')} | a=ID {agc_1(a, 'var')} | a=STRING {agc_1(a, 'string')} ;
type returns [string t]   : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

ID      : 'a'..'z' ;
NUMBER  : (DIGIT)+ ;
WS      : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};
STRING: QTS (~'\n')* QTS;
fragment DIGIT  : '0'..'9';

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
}
@lexer::init{}
@parser::init{
  @pOper = []
  @pilaO = []
  @pilaS = []
  @cuadruplos = []
  require_relative 'AGCs.rb'
}

program : (comp {agc_6})*;
comp    : expr ((GRTH{agc_2('>')}|LSTH{agc_2('<')})  expr {agc_5})? ;
expr    : (term {agc_4})((( PLUS {agc_2('+')}| MINUS {agc_2('-')}))  (term  {agc_4}))* ;
term    : (factor {agc_3}) ((( MULT {agc_2('*')}| DIV {agc_2('/')})) (factor {agc_3}) )* ;
factor  : (a=ID | a=NUMBER){agc_1(a)}  | LPAR expr RPAR;

ID      : 'a'..'z' ;
NUMBER  : (DIGIT)+ ;
WS      : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};
fragment DIGIT  : '0'..'9';

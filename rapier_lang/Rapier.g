grammar Rapier;

options {language = Ruby;}

tokens {
  PLUS='+';MINUS='-';MULT='*';DIV='/';LPAR='(';RPAR=')';LKEY='{';RKEY='}';GRTH='>';LSTH='<';GRTHE='>=';LSTHE='<=';EXEQ='==';AND ='&';OR='|';EQLS='=';QTS ='"';PROGRAM='program';IF='if';ELSE='else';WHILE='while';OUT='out';OUTS='outln';IN='in';
}
@lexer::init{}
@parser::init{
  @pOper = []
  @pilaO = []
  @pilaS = []
  @cuadruplos = []
  @tab_var = {}
  @tab_con = []
  @c_g = 0 #globales
  @c_c = 0 #constantes
  @c_l = 0 #locales
  @c_t = 0 #temporales
  @cubo= {'+'=>{'int'=>{'int'=> 'int','float'=>'float','string'=>'string'},'float'=>{'int'=> 'float','float'=>'float'},
                'string'=>{'string'=> 'string', 'int' => 'string', 'float'=>'string', 'boolean'=>'string'}},
         '-'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '*'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '/'=>{'int'=>{'int'=> 'float','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '>'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '<'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '<='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '>='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '=='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '&'=>{'boolean'=>{'boolean'=> 'boolean'}},
         '|'=>{'boolean'=>{'boolean'=> 'boolean'}},
         '='=>{'int'=>'int','float'=>'float','string'=>'string','boolean'=>'boolean'}
       }
  require_relative 'CUB.rb'
  require_relative 'CUA.rb'
  require_relative 'AGC.rb'
}

prog    : PROGRAM LKEY fun* RKEY  {agc_8} ;
fun     : b=type ':' a=ID LPAR RPAR bloq ;
bloq    : LKEY ((est(';'|')'))| sIf | sWhile)* RKEY ;
est     : (dclr | asign | comp | prt | red );
prt     : (OUT LPAR comp? RPAR {agc_3('out')})|(OUTS LPAR comp? RPAR {agc_3('outln')}) ;
red     : (a=ID {agc_1(a)} EQLS {agc_2('=')})? IN LPAR b=type RPAR {agc_3('in',b)} {agc_3('=')} ;
sIf     : IF LPAR comp RPAR {agc_4('if')} bloq {agc_5('if')} {agc_4('else')} (ELSE bloq)? {agc_5('else')} ;
sWhile  : WHILE {agc_4()} LPAR comp? RPAR {agc_4('while')} bloq {agc_5('while')} ;
dclr    : b=type a=ID {agc_1(a,b,true)} ('='  {agc_2('=')} comp {agc_3('=')})? ;
asign   : a=ID {agc_1(a)} EQLS {agc_2('=')} comp {agc_3('=')} ;
comp    : (expr{agc_3(['<','>','>=','<=','==','&','|'])})
          (((LSTHE {agc_2('<=')}|GRTHE{agc_2('>=')}|LSTH{agc_2('<')}|GRTH{agc_2('>')}|EXEQ{agc_2('==')}|AND{agc_2('&')}|OR{agc_2('|')}))
          (expr{agc_3(['<','>','>=','<=','==','&','|'])}))*;
expr    : term ((( PLUS{agc_3(['+','-'])} {agc_2('+')}| MINUS{agc_3(['+','-'])} {agc_2('-')}))(term   {agc_3(['+','-'])}))* ;
term    : factor((( MULT {agc_3(['*','/'])}{agc_2('*')}| DIV {agc_3(['*','/'])}{agc_2('/')}))(factor {agc_3(['*','/'])}))* ;
factor  : elem | LPAR {agc_2('(')} expr RPAR {agc_3} ;
elem    :('-' {agc_1('-1','int',false,true)}{agc_2('*')})( a=NUMBER {agc_1(a, 'int',false,true)}| a=FLOAT {agc_1(a, 'float',false,true)}| a=BOOL {agc_1(a, 'boolean',false,true)}| a=STRING {agc_1(a, 'string',false,true)}| a=ID {agc_1(a)}){agc_3(['*'])}|( a=NUMBER {agc_1(a, 'int',false,true)}| a=FLOAT {agc_1(a, 'float',false,true)}| a=BOOL {agc_1(a, 'boolean',false,true)}| a=STRING {agc_1(a, 'string',false,true)}| a=ID {agc_1(a)}){agc_3(['*'])} ;
type returns [string t] : 'int' {$t='int'} | 'float' {$t='float'} | 'string' {$t='string'} | 'boolean' {$t='boolean'} ;

BOOL    : 'true' | 'false' ;
NUMBER  :  INTEGER+ ;
FLOAT   :  INTEGER+ '.' INTEGER+;
ID: LETTER (LETTER | DIGIT | '_')*;
STRING: '"' NONCONTROL_CHAR* '"';
fragment NONCONTROL_CHAR: LETTER | DIGIT | SYMBOL | SPACE;
fragment LETTER: LOWER | UPPER;
fragment INTEGER: '0'..'9' ;
fragment LOWER: 'a'..'z';
fragment UPPER: 'A'..'Z';
fragment DIGIT: '0'..'9';
fragment SPACE: ' ' | '\t';
fragment SYMBOL: '!' | '#'..'/' | ':'..'@' | '['..'`' | '{'..'~' | '\\\"' | 'á'| 'é'| 'í'| 'ó' | 'ú'| 'ñ' ;
WS : ( ' '| '\t'| '\r'| '\n' ) {$channel=HIDDEN;};

/*
prog  ::= PROGRAM '{' fun* '}'  '8'
fun   ::= type ':' 'id' '(' ')' bloq
bloq  ::= '{' est* '}'
est   ::= dclr | asign | comp | sIf | sWhile | prt | red
prt   ::= 'out' '(' comp ')' '3'
red   ::= 'in' '(' comp ')' '3'
sIf   ::= 'if' '(' comp ')' '4' bloq '5' '4' ('else' bloq)? '5'
sWhile::= 'while' '4' '(' comp? ')' '4' bloq '5'
dclr  ::= 'var' type 'id' '1' ('=' '2' comp '3')?
asign ::= 'id' '1' '=' '2' comp '3'
comp ::= (expr   '3')((( '<=' '2'|  '<=' '2'| '>=' '2' | '>' '2'))(expr   '3'))*
expr  ::= (term   '3')(( '+' '2'| '-' '2')(term   '3'))*
term  ::= (factor '3')((( '*''2'| '/' '2'))(factor '3'))*
factor::= elem | '(' '2' expr ')' '3'
elem  ::= 'number_cte' '1'| 'float_cte' '1'| 'boolean_cte' '1'| 'string_cte' '1'| 'id' '1'
type  ::= 'int' | 'float' | 'string' | 'boolean'

*/

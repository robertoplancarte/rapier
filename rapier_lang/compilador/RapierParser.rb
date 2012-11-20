#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-20 07:50:08
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Rapier
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :WHILE => 24, :LETTER => 33, :FLOAT => 29, :AND => 17, 
                   :ID => 27, :SPACE => 37, :EOF => -1, :IF => 22, :IN => 26, 
                   :LPAR => 8, :RKEY => 11, :PLUS => 4, :DIGIT => 34, :T__42 => 42, 
                   :INTEGER => 32, :T__43 => 43, :EQLS => 19, :T__41 => 41, 
                   :T__46 => 46, :T__44 => 44, :T__45 => 45, :SYMBOL => 36, 
                   :ELSE => 23, :LSTHE => 15, :NUMBER => 28, :BOOL => 30, 
                   :LKEY => 10, :MULT => 6, :MINUS => 5, :EXEQ => 16, :GRTHE => 14, 
                   :LSTH => 13, :QTS => 20, :GRTH => 12, :WS => 40, :NONCONTROL_CHAR => 35, 
                   :OUT => 25, :OR => 18, :RPAR => 9, :PROGRAM => 21, :LOWER => 38, 
                   :DIV => 7, :UPPER => 39, :STRING => 31 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "EXEQ", "AND", 
                    "OR", "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "WHILE", 
                    "OUT", "IN", "ID", "NUMBER", "FLOAT", "BOOL", "STRING", 
                    "INTEGER", "LETTER", "DIGIT", "NONCONTROL_CHAR", "SYMBOL", 
                    "SPACE", "LOWER", "UPPER", "WS", "':'", "';'", "'int'", 
                    "'float'", "'string'", "'boolean'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :prog, :fun, :bloq, :est, :prt, :red, :sIf, :sWhile, 
                     :dclr, :asign, :comp, :expr, :term, :factor, :elem, 
                     :type ].freeze


    include TokenData

    begin
      generated_using( "Rapier.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )

      # - - - - - - begin action @parser::init - - - - - -
      # Rapier.g


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
        @cubo= {'+'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'},
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

      # - - - - - - end action @parser::init - - - - - - -


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule prog
    # 
    # (in Rapier.g)
    # 39:1: prog : PROGRAM LKEY ( fun )* RKEY ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 39:11: PROGRAM LKEY ( fun )* RKEY
        match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_prog_139 )
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_prog_141 )
        # at line 39:24: ( fun )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( T__43, T__46 ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 39:24: fun
            @state.following.push( TOKENS_FOLLOWING_fun_IN_prog_143 )
            fun
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_prog_146 )
        # --> action
        agc_8
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return 
    end


    # 
    # parser rule fun
    # 
    # (in Rapier.g)
    # 40:1: fun : b= type ':' a= ID LPAR RPAR bloq ;
    # 
    def fun
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      a = nil
      b = nil

      begin
        # at line 40:11: b= type ':' a= ID LPAR RPAR bloq
        @state.following.push( TOKENS_FOLLOWING_type_IN_fun_163 )
        b = type
        @state.following.pop
        match( T__41, TOKENS_FOLLOWING_T__41_IN_fun_165 )
        a = match( ID, TOKENS_FOLLOWING_ID_IN_fun_169 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_fun_171 )
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_fun_173 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_fun_175 )
        bloq
        @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return 
    end


    # 
    # parser rule bloq
    # 
    # (in Rapier.g)
    # 41:1: bloq : LKEY ( ( est ( ';' | ')' ) ) | sIf | sWhile )* RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 41:11: LKEY ( ( est ( ';' | ')' ) ) | sIf | sWhile )* RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_186 )
        # at line 41:16: ( ( est ( ';' | ')' ) ) | sIf | sWhile )*
        while true # decision 2
          alt_2 = 4
          case look_2 = @input.peek( 1 )
          when MINUS, LPAR, OUT, IN, ID, NUMBER, FLOAT, BOOL, STRING, T__43, T__44, T__45, T__46 then alt_2 = 1
          when IF then alt_2 = 2
          when WHILE then alt_2 = 3
          end
          case alt_2
          when 1
            # at line 41:17: ( est ( ';' | ')' ) )
            # at line 41:17: ( est ( ';' | ')' ) )
            # at line 41:18: est ( ';' | ')' )
            @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_190 )
            est
            @state.following.pop
            if @input.peek(1) == RPAR || @input.peek(1) == T__42
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end




          when 2
            # at line 41:33: sIf
            @state.following.push( TOKENS_FOLLOWING_sIf_IN_bloq_199 )
            sIf
            @state.following.pop

          when 3
            # at line 41:39: sWhile
            @state.following.push( TOKENS_FOLLOWING_sWhile_IN_bloq_203 )
            sWhile
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_207 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return 
    end


    # 
    # parser rule est
    # 
    # (in Rapier.g)
    # 42:1: est : ( dclr | asign | comp | prt | red ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 42:11: ( dclr | asign | comp | prt | red )
        # at line 42:11: ( dclr | asign | comp | prt | red )
        alt_3 = 5
        case look_3 = @input.peek( 1 )
        when T__43, T__44, T__45, T__46 then alt_3 = 1
        when ID then look_3_2 = @input.peek( 2 )

        if ( look_3_2 == EQLS )
          look_3_6 = @input.peek( 3 )

          if ( look_3_6 == MINUS || look_3_6 == LPAR || look_3_6.between?( ID, STRING ) )
            alt_3 = 2
          elsif ( look_3_6 == IN )
            alt_3 = 5
          else
            raise NoViableAlternative( "", 3, 6 )
          end
        elsif ( look_3_2.between?( PLUS, DIV ) || look_3_2 == RPAR || look_3_2.between?( GRTH, OR ) || look_3_2 == T__42 )
          alt_3 = 3
        else
          raise NoViableAlternative( "", 3, 2 )
        end
        when MINUS, LPAR, NUMBER, FLOAT, BOOL, STRING then alt_3 = 3
        when OUT then alt_3 = 4
        when IN then alt_3 = 5
        else
          raise NoViableAlternative( "", 3, 0 )
        end
        case alt_3
        when 1
          # at line 42:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_220 )
          dclr
          @state.following.pop

        when 2
          # at line 42:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_224 )
          asign
          @state.following.pop

        when 3
          # at line 42:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_228 )
          comp
          @state.following.pop

        when 4
          # at line 42:34: prt
          @state.following.push( TOKENS_FOLLOWING_prt_IN_est_232 )
          prt
          @state.following.pop

        when 5
          # at line 42:40: red
          @state.following.push( TOKENS_FOLLOWING_red_IN_est_236 )
          red
          @state.following.pop

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return 
    end


    # 
    # parser rule prt
    # 
    # (in Rapier.g)
    # 43:1: prt : OUT LPAR ( comp )? RPAR ;
    # 
    def prt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 43:11: OUT LPAR ( comp )? RPAR
        match( OUT, TOKENS_FOLLOWING_OUT_IN_prt_249 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_prt_251 )
        # at line 43:20: ( comp )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == MINUS || look_4_0 == LPAR || look_4_0.between?( ID, STRING ) )
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 43:20: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_prt_253 )
          comp
          @state.following.pop

        end
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_prt_256 )
        # --> action
        agc_3('out')
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return 
    end


    # 
    # parser rule red
    # 
    # (in Rapier.g)
    # 44:1: red : (a= ID EQLS )? IN LPAR b= type RPAR ;
    # 
    def red
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      a = nil
      b = nil

      begin
        # at line 44:11: (a= ID EQLS )? IN LPAR b= type RPAR
        # at line 44:11: (a= ID EQLS )?
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == ID )
          alt_5 = 1
        end
        case alt_5
        when 1
          # at line 44:12: a= ID EQLS
          a = match( ID, TOKENS_FOLLOWING_ID_IN_red_273 )
          # --> action
          agc_1(a)
          # <-- action
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_red_277 )
          # --> action
          agc_2('=')
          # <-- action

        end
        match( IN, TOKENS_FOLLOWING_IN_IN_red_283 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_red_285 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_red_289 )
        b = type
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_red_291 )
        # --> action
        agc_3('in',b)
        # <-- action
        # --> action
        agc_3('=')
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return 
    end


    # 
    # parser rule sIf
    # 
    # (in Rapier.g)
    # 45:1: sIf : IF LPAR comp RPAR bloq ( ELSE bloq )? ;
    # 
    def sIf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 45:11: IF LPAR comp RPAR bloq ( ELSE bloq )?
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_307 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_309 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_311 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_313 )
        # --> action
        agc_4('if')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_317 )
        bloq
        @state.following.pop
        # --> action
        agc_5('if')
        # <-- action
        # --> action
        agc_4('else')
        # <-- action
        # at line 45:78: ( ELSE bloq )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ELSE )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 45:79: ELSE bloq
          match( ELSE, TOKENS_FOLLOWING_ELSE_IN_sIf_324 )
          @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_326 )
          bloq
          @state.following.pop

        end
        # --> action
        agc_5('else')
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return 
    end


    # 
    # parser rule sWhile
    # 
    # (in Rapier.g)
    # 46:1: sWhile : WHILE LPAR ( comp )? RPAR bloq ;
    # 
    def sWhile
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 46:11: WHILE LPAR ( comp )? RPAR bloq
        match( WHILE, TOKENS_FOLLOWING_WHILE_IN_sWhile_339 )
        # --> action
        agc_4()
        # <-- action
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sWhile_343 )
        # at line 46:32: ( comp )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == MINUS || look_7_0 == LPAR || look_7_0.between?( ID, STRING ) )
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 46:32: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_sWhile_345 )
          comp
          @state.following.pop

        end
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sWhile_348 )
        # --> action
        agc_4('while')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sWhile_352 )
        bloq
        @state.following.pop
        # --> action
        agc_5('while')
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return 
    end


    # 
    # parser rule dclr
    # 
    # (in Rapier.g)
    # 47:1: dclr : b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      a = nil
      b = nil

      begin
        # at line 47:11: b= type a= ID ( '=' comp )?
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_367 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_371 )
        # --> action
        agc_1(a,b,true)
        # <-- action
        # at line 47:41: ( '=' comp )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == EQLS )
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 47:42: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_376 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_381 )
          comp
          @state.following.pop
          # --> action
          agc_3('=')
          # <-- action

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return 
    end


    # 
    # parser rule asign
    # 
    # (in Rapier.g)
    # 48:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      a = nil

      begin
        # at line 48:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_397 )
        # --> action
        agc_1(a)
        # <-- action
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_401 )
        # --> action
        agc_2('=')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_405 )
        comp
        @state.following.pop
        # --> action
        agc_3('=')
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return 
    end


    # 
    # parser rule comp
    # 
    # (in Rapier.g)
    # 49:1: comp : ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      begin
        # at line 49:11: ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )*
        # at line 49:11: ( expr )
        # at line 49:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_419 )
        expr
        @state.following.pop
        # --> action
        agc_3(['<','>','>=','<=','==','&','|'])
        # <-- action

        # at line 50:11: ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0.between?( GRTH, OR ) )
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 50:12: ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr )
            # at line 50:12: ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) )
            # at line 50:13: ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR )
            # at line 50:13: ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR )
            alt_9 = 7
            case look_9 = @input.peek( 1 )
            when LSTHE then alt_9 = 1
            when GRTHE then alt_9 = 2
            when LSTH then alt_9 = 3
            when GRTH then alt_9 = 4
            when EXEQ then alt_9 = 5
            when AND then alt_9 = 6
            when OR then alt_9 = 7
            else
              raise NoViableAlternative( "", 9, 0 )
            end
            case alt_9
            when 1
              # at line 50:14: LSTHE
              match( LSTHE, TOKENS_FOLLOWING_LSTHE_IN_comp_436 )
              # --> action
              agc_2('<=')
              # <-- action

            when 2
              # at line 50:34: GRTHE
              match( GRTHE, TOKENS_FOLLOWING_GRTHE_IN_comp_440 )
              # --> action
              agc_2('>=')
              # <-- action

            when 3
              # at line 50:53: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_443 )
              # --> action
              agc_2('<')
              # <-- action

            when 4
              # at line 50:70: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_446 )
              # --> action
              agc_2('>')
              # <-- action

            when 5
              # at line 50:87: EXEQ
              match( EXEQ, TOKENS_FOLLOWING_EXEQ_IN_comp_449 )
              # --> action
              agc_2('==')
              # <-- action

            when 6
              # at line 50:105: AND
              match( AND, TOKENS_FOLLOWING_AND_IN_comp_452 )
              # --> action
              agc_2('&')
              # <-- action

            when 7
              # at line 50:121: OR
              match( OR, TOKENS_FOLLOWING_OR_IN_comp_455 )
              # --> action
              agc_2('|')
              # <-- action

            end

            # at line 51:11: ( expr )
            # at line 51:12: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_471 )
            expr
            @state.following.pop
            # --> action
            agc_3(['<','>','>=','<=','==','&','|'])
            # <-- action


          else
            break # out of loop for decision 10
          end
        end # loop for decision 10

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return 
    end


    # 
    # parser rule expr
    # 
    # (in Rapier.g)
    # 52:1: expr : term ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      begin
        # at line 52:11: term ( ( ( PLUS | MINUS ) ) ( term ) )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_485 )
        term
        @state.following.pop
        # at line 52:16: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0.between?( PLUS, MINUS ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 52:17: ( ( PLUS | MINUS ) ) ( term )
            # at line 52:17: ( ( PLUS | MINUS ) )
            # at line 52:18: ( PLUS | MINUS )
            # at line 52:18: ( PLUS | MINUS )
            alt_11 = 2
            look_11_0 = @input.peek( 1 )

            if ( look_11_0 == PLUS )
              alt_11 = 1
            elsif ( look_11_0 == MINUS )
              alt_11 = 2
            else
              raise NoViableAlternative( "", 11, 0 )
            end
            case alt_11
            when 1
              # at line 52:20: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_491 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 52:57: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_497 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 52:95: ( term )
            # at line 52:96: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_504 )
            term
            @state.following.pop
            # --> action
            agc_3(['+','-'])
            # <-- action


          else
            break # out of loop for decision 12
          end
        end # loop for decision 12

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return 
    end


    # 
    # parser rule term
    # 
    # (in Rapier.g)
    # 53:1: term : factor ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 53:11: factor ( ( ( MULT | DIV ) ) ( factor ) )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_522 )
        factor
        @state.following.pop
        # at line 53:17: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( MULT, DIV ) )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 53:18: ( ( MULT | DIV ) ) ( factor )
            # at line 53:18: ( ( MULT | DIV ) )
            # at line 53:19: ( MULT | DIV )
            # at line 53:19: ( MULT | DIV )
            alt_13 = 2
            look_13_0 = @input.peek( 1 )

            if ( look_13_0 == MULT )
              alt_13 = 1
            elsif ( look_13_0 == DIV )
              alt_13 = 2
            else
              raise NoViableAlternative( "", 13, 0 )
            end
            case alt_13
            when 1
              # at line 53:21: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_527 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 53:58: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_533 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 53:94: ( factor )
            # at line 53:95: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_540 )
            factor
            @state.following.pop
            # --> action
            agc_3(['*','/'])
            # <-- action


          else
            break # out of loop for decision 14
          end
        end # loop for decision 14

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )

      end
      
      return 
    end


    # 
    # parser rule factor
    # 
    # (in Rapier.g)
    # 54:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 54:9: ( elem | LPAR expr RPAR )
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == MINUS || look_15_0.between?( ID, STRING ) )
          alt_15 = 1
        elsif ( look_15_0 == LPAR )
          alt_15 = 2
        else
          raise NoViableAlternative( "", 15, 0 )
        end
        case alt_15
        when 1
          # at line 54:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_554 )
          elem
          @state.following.pop

        when 2
          # at line 54:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_558 )
          # --> action
          agc_2('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_562 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_564 )
          # --> action
          agc_3
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )

      end
      
      return 
    end


    # 
    # parser rule elem
    # 
    # (in Rapier.g)
    # 55:1: elem : ( ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) | (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      a = nil

      begin
        # at line 55:9: ( ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) | (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) )
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == MINUS )
          alt_18 = 1
        elsif ( look_18_0.between?( ID, STRING ) )
          alt_18 = 2
        else
          raise NoViableAlternative( "", 18, 0 )
        end
        case alt_18
        when 1
          # at line 55:10: ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          # at line 55:10: ( '-' )
          # at line 55:11: '-'
          match( MINUS, TOKENS_FOLLOWING_MINUS_IN_elem_577 )
          # --> action
          agc_1('-1','int',false,true)
          # <-- action
          # --> action
          agc_2('*')
          # <-- action

          # at line 55:58: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          alt_16 = 5
          case look_16 = @input.peek( 1 )
          when NUMBER then alt_16 = 1
          when FLOAT then alt_16 = 2
          when BOOL then alt_16 = 3
          when STRING then alt_16 = 4
          when ID then alt_16 = 5
          else
            raise NoViableAlternative( "", 16, 0 )
          end
          case alt_16
          when 1
            # at line 55:60: a= NUMBER
            a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_586 )
            # --> action
            agc_1(a, 'int',false,true)
            # <-- action

          when 2
            # at line 55:99: a= FLOAT
            a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_593 )
            # --> action
            agc_1(a, 'float',false,true)
            # <-- action

          when 3
            # at line 55:139: a= BOOL
            a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_600 )
            # --> action
            agc_1(a, 'boolean',false,true)
            # <-- action

          when 4
            # at line 55:180: a= STRING
            a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_607 )
            # --> action
            agc_1(a, 'string',false,true)
            # <-- action

          when 5
            # at line 55:222: a= ID
            a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_614 )
            # --> action
            agc_1(a)
            # <-- action

          end
          # --> action
          agc_3(['*'])
          # <-- action

        when 2
          # at line 55:253: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          # at line 55:253: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          alt_17 = 5
          case look_17 = @input.peek( 1 )
          when NUMBER then alt_17 = 1
          when FLOAT then alt_17 = 2
          when BOOL then alt_17 = 3
          when STRING then alt_17 = 4
          when ID then alt_17 = 5
          else
            raise NoViableAlternative( "", 17, 0 )
          end
          case alt_17
          when 1
            # at line 55:255: a= NUMBER
            a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_624 )
            # --> action
            agc_1(a, 'int',false,true)
            # <-- action

          when 2
            # at line 55:294: a= FLOAT
            a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_631 )
            # --> action
            agc_1(a, 'float',false,true)
            # <-- action

          when 3
            # at line 55:334: a= BOOL
            a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_638 )
            # --> action
            agc_1(a, 'boolean',false,true)
            # <-- action

          when 4
            # at line 55:375: a= STRING
            a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_645 )
            # --> action
            agc_1(a, 'string',false,true)
            # <-- action

          when 5
            # at line 55:417: a= ID
            a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_652 )
            # --> action
            agc_1(a)
            # <-- action

          end
          # --> action
          agc_3(['*'])
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return 
    end


    # 
    # parser rule type
    # 
    # (in Rapier.g)
    # 56:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      t = nil

      begin
        # at line 56:25: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_19 = 4
        case look_19 = @input.peek( 1 )
        when T__43 then alt_19 = 1
        when T__44 then alt_19 = 2
        when T__45 then alt_19 = 3
        when T__46 then alt_19 = 4
        else
          raise NoViableAlternative( "", 19, 0 )
        end
        case alt_19
        when 1
          # at line 56:27: 'int'
          match( T__43, TOKENS_FOLLOWING_T__43_IN_type_668 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 56:46: 'float'
          match( T__44, TOKENS_FOLLOWING_T__44_IN_type_674 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 56:69: 'string'
          match( T__45, TOKENS_FOLLOWING_T__45_IN_type_680 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 56:94: 'boolean'
          match( T__46, TOKENS_FOLLOWING_T__46_IN_type_686 )
          # --> action
          t='boolean'
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return t
    end



    TOKENS_FOLLOWING_PROGRAM_IN_prog_139 = Set[ 10 ]
    TOKENS_FOLLOWING_LKEY_IN_prog_141 = Set[ 11, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_fun_IN_prog_143 = Set[ 11, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_RKEY_IN_prog_146 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_fun_163 = Set[ 41 ]
    TOKENS_FOLLOWING_T__41_IN_fun_165 = Set[ 27 ]
    TOKENS_FOLLOWING_ID_IN_fun_169 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_fun_171 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_fun_173 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_fun_175 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_186 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_est_IN_bloq_190 = Set[ 9, 42 ]
    TOKENS_FOLLOWING_set_IN_bloq_191 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_sIf_IN_bloq_199 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_sWhile_IN_bloq_203 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_207 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_220 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_224 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_228 = Set[ 1 ]
    TOKENS_FOLLOWING_prt_IN_est_232 = Set[ 1 ]
    TOKENS_FOLLOWING_red_IN_est_236 = Set[ 1 ]
    TOKENS_FOLLOWING_OUT_IN_prt_249 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_prt_251 = Set[ 5, 8, 9, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_comp_IN_prt_253 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_prt_256 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_red_273 = Set[ 19 ]
    TOKENS_FOLLOWING_EQLS_IN_red_277 = Set[ 26 ]
    TOKENS_FOLLOWING_IN_IN_red_283 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_red_285 = Set[ 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_red_289 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_red_291 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_307 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_309 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_comp_IN_sIf_311 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_313 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_317 = Set[ 1, 23 ]
    TOKENS_FOLLOWING_ELSE_IN_sIf_324 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_326 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_sWhile_339 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sWhile_343 = Set[ 5, 8, 9, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_comp_IN_sWhile_345 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sWhile_348 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sWhile_352 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_dclr_367 = Set[ 27 ]
    TOKENS_FOLLOWING_ID_IN_dclr_371 = Set[ 1, 19 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_376 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_comp_IN_dclr_381 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_397 = Set[ 19 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_401 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_comp_IN_asign_405 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_419 = Set[ 1, 12, 13, 14, 15, 16, 17, 18 ]
    TOKENS_FOLLOWING_LSTHE_IN_comp_436 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_GRTHE_IN_comp_440 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_443 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_446 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_EXEQ_IN_comp_449 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_AND_IN_comp_452 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_OR_IN_comp_455 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_expr_IN_comp_471 = Set[ 1, 12, 13, 14, 15, 16, 17, 18 ]
    TOKENS_FOLLOWING_term_IN_expr_485 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_491 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_497 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_term_IN_expr_504 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_522 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_527 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_DIV_IN_term_533 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_factor_IN_term_540 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_554 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_558 = Set[ 5, 8, 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_expr_IN_factor_562 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_564 = Set[ 1 ]
    TOKENS_FOLLOWING_MINUS_IN_elem_577 = Set[ 27, 28, 29, 30, 31 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_586 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_593 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_600 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_607 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_614 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_624 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_631 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_638 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_645 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_652 = Set[ 1 ]
    TOKENS_FOLLOWING_T__43_IN_type_668 = Set[ 1 ]
    TOKENS_FOLLOWING_T__44_IN_type_674 = Set[ 1 ]
    TOKENS_FOLLOWING_T__45_IN_type_680 = Set[ 1 ]
    TOKENS_FOLLOWING_T__46_IN_type_686 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


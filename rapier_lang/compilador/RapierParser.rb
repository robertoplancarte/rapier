#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-25 15:47:17
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
    define_tokens( :EQLS => 16, :MAIN => 18, :T__29 => 29, :T__28 => 28, 
                   :T__27 => 27, :T__26 => 26, :T__25 => 25, :NUMBER => 21, 
                   :MINUS => 5, :MULT => 6, :LKEY => 10, :ID => 20, :AND => 14, 
                   :EOF => -1, :LSTH => 13, :IF => 19, :QTS => 17, :GRTH => 12, 
                   :WS => 24, :LPAR => 8, :OR => 15, :RKEY => 11, :PLUS => 4, 
                   :RPAR => 9, :DIGIT => 23, :DIV => 7, :STRING => 22 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "AND", "OR", "EQLS", "QTS", 
                    "MAIN", "IF", "ID", "NUMBER", "STRING", "DIGIT", "WS", 
                    "'var'", "'int'", "'float'", "'string'", "'boolean'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :prog, :bloq, :est, :sIf, :dclr, :asign, :comp, :expr, 
                     :term, :factor, :elem, :type ].freeze


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
        @counter = 0
        require_relative 'Cuadruplo.rb'
        require_relative 'AGCs.rb'

      # - - - - - - end action @parser::init - - - - - - -


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule prog
    # 
    # (in Rapier.g)
    # 34:1: prog : MAIN bloq ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 34:11: MAIN bloq
        match( MAIN, TOKENS_FOLLOWING_MAIN_IN_prog_224 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_prog_226 )
        bloq
        @state.following.pop
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
    # parser rule bloq
    # 
    # (in Rapier.g)
    # 35:1: bloq : LKEY ( est )* RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 35:11: LKEY ( est )* RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_239 )
        # at line 35:16: ( est )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == LPAR || look_1_0.between?( IF, STRING ) || look_1_0 == T__25 )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 35:16: est
            @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_241 )
            est
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_244 )

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
    # parser rule est
    # 
    # (in Rapier.g)
    # 36:1: est : ( dclr | asign | comp | sIf ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 36:11: ( dclr | asign | comp | sIf )
        # at line 36:11: ( dclr | asign | comp | sIf )
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when T__25 then alt_2 = 1
        when ID then look_2_2 = @input.peek( 2 )

        if ( look_2_2 == EQLS )
          alt_2 = 2
        elsif ( look_2_2.between?( PLUS, LPAR ) || look_2_2.between?( RKEY, LSTH ) || look_2_2.between?( IF, STRING ) || look_2_2 == T__25 )
          alt_2 = 3
        else
          raise NoViableAlternative( "", 2, 2 )
        end
        when LPAR, NUMBER, STRING then alt_2 = 3
        when IF then alt_2 = 4
        else
          raise NoViableAlternative( "", 2, 0 )
        end
        case alt_2
        when 1
          # at line 36:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_257 )
          dclr
          @state.following.pop

        when 2
          # at line 36:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_261 )
          asign
          @state.following.pop

        when 3
          # at line 36:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_265 )
          comp
          @state.following.pop

        when 4
          # at line 36:34: sIf
          @state.following.push( TOKENS_FOLLOWING_sIf_IN_est_269 )
          sIf
          @state.following.pop

        end

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
    # parser rule sIf
    # 
    # (in Rapier.g)
    # 37:1: sIf : IF LPAR comp RPAR bloq ;
    # 
    def sIf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 37:11: IF LPAR comp RPAR bloq
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_283 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_285 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_287 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_289 )
        # --> action
        agc_4
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_293 )
        bloq
        @state.following.pop
        # --> action
        agc_5
        # <-- action

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
    # parser rule dclr
    # 
    # (in Rapier.g)
    # 38:1: dclr : 'var' b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      a = nil
      b = nil

      begin
        # at line 38:11: 'var' b= type a= ID ( '=' comp )?
        match( T__25, TOKENS_FOLLOWING_T__25_IN_dclr_306 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_310 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_314 )
        # --> action
        agc_1(a,b)
        # <-- action
        # at line 38:42: ( '=' comp )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == EQLS )
          alt_3 = 1
        end
        case alt_3
        when 1
          # at line 38:43: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_319 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_324 )
          comp
          @state.following.pop
          # --> action
          agc_3
          # <-- action

        end

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
    # parser rule asign
    # 
    # (in Rapier.g)
    # 39:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      a = nil

      begin
        # at line 39:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_340 )
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_342 )
        # --> action
        agc_2('=')
        # <-- action
        # --> action
        agc_1(a)
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_347 )
        comp
        @state.following.pop
        # --> action
        agc_3
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
    # parser rule comp
    # 
    # (in Rapier.g)
    # 40:1: comp : ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 40:11: ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )*
        # at line 40:11: ( expr )
        # at line 40:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_361 )
        expr
        @state.following.pop
        # --> action
        agc_3(['<','>'])
        # <-- action

        # at line 40:36: ( ( ( LSTH | GRTH ) ) ( expr ) )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( GRTH, LSTH ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 40:37: ( ( LSTH | GRTH ) ) ( expr )
            # at line 40:37: ( ( LSTH | GRTH ) )
            # at line 40:38: ( LSTH | GRTH )
            # at line 40:38: ( LSTH | GRTH )
            alt_4 = 2
            look_4_0 = @input.peek( 1 )

            if ( look_4_0 == LSTH )
              alt_4 = 1
            elsif ( look_4_0 == GRTH )
              alt_4 = 2
            else
              raise NoViableAlternative( "", 4, 0 )
            end
            case alt_4
            when 1
              # at line 40:40: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_369 )
              # --> action
              agc_2('<')
              # <-- action

            when 2
              # at line 40:59: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_374 )
              # --> action
              agc_2('>')
              # <-- action

            end

            # at line 40:80: ( expr )
            # at line 40:81: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_382 )
            expr
            @state.following.pop
            # --> action
            agc_3(['<','>'])
            # <-- action


          else
            break # out of loop for decision 5
          end
        end # loop for decision 5

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
    # parser rule expr
    # 
    # (in Rapier.g)
    # 41:1: expr : ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 41:11: ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )*
        # at line 41:11: ( term )
        # at line 41:12: term
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_400 )
        term
        @state.following.pop
        # --> action
        agc_3(['+','-'])
        # <-- action

        # at line 41:36: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( PLUS, MINUS ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 41:37: ( ( PLUS | MINUS ) ) ( term )
            # at line 41:37: ( ( PLUS | MINUS ) )
            # at line 41:38: ( PLUS | MINUS )
            # at line 41:38: ( PLUS | MINUS )
            alt_6 = 2
            look_6_0 = @input.peek( 1 )

            if ( look_6_0 == PLUS )
              alt_6 = 1
            elsif ( look_6_0 == MINUS )
              alt_6 = 2
            else
              raise NoViableAlternative( "", 6, 0 )
            end
            case alt_6
            when 1
              # at line 41:40: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_408 )
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 41:59: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_413 )
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 41:81: ( term )
            # at line 41:82: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_421 )
            term
            @state.following.pop
            # --> action
            agc_3(['+','-'])
            # <-- action


          else
            break # out of loop for decision 7
          end
        end # loop for decision 7

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
    # parser rule term
    # 
    # (in Rapier.g)
    # 42:1: term : ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      begin
        # at line 42:11: ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )*
        # at line 42:11: ( factor )
        # at line 42:12: factor
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_439 )
        factor
        @state.following.pop
        # --> action
        agc_3(['*','/'])
        # <-- action

        # at line 42:39: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( MULT, DIV ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 42:40: ( ( MULT | DIV ) ) ( factor )
            # at line 42:40: ( ( MULT | DIV ) )
            # at line 42:41: ( MULT | DIV )
            # at line 42:41: ( MULT | DIV )
            alt_8 = 2
            look_8_0 = @input.peek( 1 )

            if ( look_8_0 == MULT )
              alt_8 = 1
            elsif ( look_8_0 == DIV )
              alt_8 = 2
            else
              raise NoViableAlternative( "", 8, 0 )
            end
            case alt_8
            when 1
              # at line 42:43: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_448 )
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 42:62: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_453 )
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 42:81: ( factor )
            # at line 42:82: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_460 )
            factor
            @state.following.pop
            # --> action
            agc_3(['*','/'])
            # <-- action


          else
            break # out of loop for decision 9
          end
        end # loop for decision 9

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
    # parser rule factor
    # 
    # (in Rapier.g)
    # 43:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      begin
        # at line 43:9: ( elem | LPAR expr RPAR )
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0.between?( ID, STRING ) )
          alt_10 = 1
        elsif ( look_10_0 == LPAR )
          alt_10 = 2
        else
          raise NoViableAlternative( "", 10, 0 )
        end
        case alt_10
        when 1
          # at line 43:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_475 )
          elem
          @state.following.pop

        when 2
          # at line 43:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_479 )
          # --> action
          agc_1('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_483 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_485 )
          # --> action
          agc_3
          # <-- action

        end
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
    # parser rule elem
    # 
    # (in Rapier.g)
    # 44:1: elem : (a= NUMBER | a= ID | a= STRING );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      a = nil

      begin
        # at line 44:9: (a= NUMBER | a= ID | a= STRING )
        alt_11 = 3
        case look_11 = @input.peek( 1 )
        when NUMBER then alt_11 = 1
        when ID then alt_11 = 2
        when STRING then alt_11 = 3
        else
          raise NoViableAlternative( "", 11, 0 )
        end
        case alt_11
        when 1
          # at line 44:11: a= NUMBER
          a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_500 )
          # --> action
          agc_1(a, 'int')
          # <-- action

        when 2
          # at line 44:40: a= ID
          a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_508 )
          # --> action
          agc_1(a, 'var')
          # <-- action

        when 3
          # at line 44:65: a= STRING
          a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_516 )
          # --> action
          agc_1(a, 'string')
          # <-- action

        end
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
    # parser rule type
    # 
    # (in Rapier.g)
    # 45:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      t = nil

      begin
        # at line 45:27: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_12 = 4
        case look_12 = @input.peek( 1 )
        when T__26 then alt_12 = 1
        when T__27 then alt_12 = 2
        when T__28 then alt_12 = 3
        when T__29 then alt_12 = 4
        else
          raise NoViableAlternative( "", 12, 0 )
        end
        case alt_12
        when 1
          # at line 45:29: 'int'
          match( T__26, TOKENS_FOLLOWING_T__26_IN_type_532 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 45:48: 'float'
          match( T__27, TOKENS_FOLLOWING_T__27_IN_type_538 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 45:71: 'string'
          match( T__28, TOKENS_FOLLOWING_T__28_IN_type_544 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 45:96: 'boolean'
          match( T__29, TOKENS_FOLLOWING_T__29_IN_type_550 )
          # --> action
          t='boolean'
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return t
    end



    TOKENS_FOLLOWING_MAIN_IN_prog_224 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_prog_226 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_239 = Set[ 8, 11, 19, 20, 21, 22, 25 ]
    TOKENS_FOLLOWING_est_IN_bloq_241 = Set[ 8, 11, 19, 20, 21, 22, 25 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_244 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_257 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_261 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_265 = Set[ 1 ]
    TOKENS_FOLLOWING_sIf_IN_est_269 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_283 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_285 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_comp_IN_sIf_287 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_289 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_293 = Set[ 1 ]
    TOKENS_FOLLOWING_T__25_IN_dclr_306 = Set[ 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_type_IN_dclr_310 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_dclr_314 = Set[ 1, 16 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_319 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_comp_IN_dclr_324 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_340 = Set[ 16 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_342 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_comp_IN_asign_347 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_361 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_369 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_374 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_expr_IN_comp_382 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_term_IN_expr_400 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_408 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_413 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_term_IN_expr_421 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_439 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_448 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_DIV_IN_term_453 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_factor_IN_term_460 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_475 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_479 = Set[ 8, 20, 21, 22 ]
    TOKENS_FOLLOWING_expr_IN_factor_483 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_485 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_500 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_508 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_516 = Set[ 1 ]
    TOKENS_FOLLOWING_T__26_IN_type_532 = Set[ 1 ]
    TOKENS_FOLLOWING_T__27_IN_type_538 = Set[ 1 ]
    TOKENS_FOLLOWING_T__28_IN_type_544 = Set[ 1 ]
    TOKENS_FOLLOWING_T__29_IN_type_550 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


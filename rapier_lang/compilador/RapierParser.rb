#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-25 12:38:03
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
    define_tokens( :EQLS => 14, :MAIN => 16, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :T__23 => 23, :NUMBER => 19, 
                   :MINUS => 5, :MULT => 6, :LKEY => 10, :ID => 18, :EOF => -1, 
                   :LSTH => 13, :IF => 17, :QTS => 15, :GRTH => 12, :WS => 22, 
                   :LPAR => 8, :RKEY => 11, :PLUS => 4, :RPAR => 9, :DIGIT => 21, 
                   :DIV => 7, :STRING => 20 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "EQLS", "QTS", "MAIN", "IF", 
                    "ID", "NUMBER", "STRING", "DIGIT", "WS", "'var'", "'int'", 
                    "'float'", "'string'", "'boolean'" )
    
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
        require_relative 'Cuadruplo.rb'
        require_relative 'AGCs.rb'

      # - - - - - - end action @parser::init - - - - - - -


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule prog
    # 
    # (in Rapier.g)
    # 31:1: prog : MAIN bloq ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 31:11: MAIN bloq
        match( MAIN, TOKENS_FOLLOWING_MAIN_IN_prog_199 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_prog_201 )
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
    # 32:1: bloq : LKEY ( est )* RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 32:11: LKEY ( est )* RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_214 )
        # at line 32:16: ( est )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == LPAR || look_1_0.between?( IF, STRING ) || look_1_0 == T__23 )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 32:16: est
            @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_216 )
            est
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_219 )

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
    # 33:1: est : ( dclr | asign | comp | sIf ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 33:11: ( dclr | asign | comp | sIf )
        # at line 33:11: ( dclr | asign | comp | sIf )
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when T__23 then alt_2 = 1
        when ID then look_2_2 = @input.peek( 2 )

        if ( look_2_2 == EQLS )
          alt_2 = 2
        elsif ( look_2_2.between?( PLUS, LPAR ) || look_2_2.between?( RKEY, LSTH ) || look_2_2.between?( IF, STRING ) || look_2_2 == T__23 )
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
          # at line 33:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_232 )
          dclr
          @state.following.pop

        when 2
          # at line 33:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_236 )
          asign
          @state.following.pop

        when 3
          # at line 33:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_240 )
          comp
          @state.following.pop

        when 4
          # at line 33:34: sIf
          @state.following.push( TOKENS_FOLLOWING_sIf_IN_est_244 )
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
    # 34:1: sIf : IF LPAR comp RPAR bloq ;
    # 
    def sIf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 34:11: IF LPAR comp RPAR bloq
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_258 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_260 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_262 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_264 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_266 )
        bloq
        @state.following.pop

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
    # 35:1: dclr : 'var' b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      a = nil
      b = nil

      begin
        # at line 35:11: 'var' b= type a= ID ( '=' comp )?
        match( T__23, TOKENS_FOLLOWING_T__23_IN_dclr_277 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_281 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_285 )
        # --> action
        agc_1(a,b)
        # <-- action
        # at line 35:42: ( '=' comp )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == EQLS )
          alt_3 = 1
        end
        case alt_3
        when 1
          # at line 35:43: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_290 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_295 )
          comp
          @state.following.pop
          # --> action
          agc_6
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
    # 36:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      a = nil

      begin
        # at line 36:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_311 )
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_313 )
        # --> action
        agc_2('=')
        # <-- action
        # --> action
        agc_1(a)
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_318 )
        comp
        @state.following.pop
        # --> action
        agc_6
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
    # 37:1: comp : ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 37:11: ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )*
        # at line 37:11: ( expr )
        # at line 37:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_332 )
        expr
        @state.following.pop
        # --> action
        agc_5
        # <-- action

        # at line 37:25: ( ( ( LSTH | GRTH ) ) ( expr ) )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( GRTH, LSTH ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 37:26: ( ( LSTH | GRTH ) ) ( expr )
            # at line 37:26: ( ( LSTH | GRTH ) )
            # at line 37:27: ( LSTH | GRTH )
            # at line 37:27: ( LSTH | GRTH )
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
              # at line 37:29: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_340 )
              # --> action
              agc_2('<')
              # <-- action

            when 2
              # at line 37:48: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_345 )
              # --> action
              agc_2('>')
              # <-- action

            end

            # at line 37:69: ( expr )
            # at line 37:70: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_353 )
            expr
            @state.following.pop
            # --> action
            agc_5
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
    # 38:1: expr : ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 38:11: ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )*
        # at line 38:11: ( term )
        # at line 38:12: term
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_371 )
        term
        @state.following.pop
        # --> action
        agc_4
        # <-- action

        # at line 38:25: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( PLUS, MINUS ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 38:26: ( ( PLUS | MINUS ) ) ( term )
            # at line 38:26: ( ( PLUS | MINUS ) )
            # at line 38:27: ( PLUS | MINUS )
            # at line 38:27: ( PLUS | MINUS )
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
              # at line 38:29: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_379 )
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 38:48: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_384 )
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 38:70: ( term )
            # at line 38:71: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_392 )
            term
            @state.following.pop
            # --> action
            agc_4
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
    # 39:1: term : ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      begin
        # at line 39:11: ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )*
        # at line 39:11: ( factor )
        # at line 39:12: factor
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_410 )
        factor
        @state.following.pop
        # --> action
        agc_3
        # <-- action

        # at line 39:28: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( MULT, DIV ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 39:29: ( ( MULT | DIV ) ) ( factor )
            # at line 39:29: ( ( MULT | DIV ) )
            # at line 39:30: ( MULT | DIV )
            # at line 39:30: ( MULT | DIV )
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
              # at line 39:32: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_419 )
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 39:51: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_424 )
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 39:70: ( factor )
            # at line 39:71: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_431 )
            factor
            @state.following.pop
            # --> action
            agc_3
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
    # 40:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      begin
        # at line 40:9: ( elem | LPAR expr RPAR )
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
          # at line 40:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_446 )
          elem
          @state.following.pop

        when 2
          # at line 40:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_450 )
          # --> action
          agc_1('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_454 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_456 )
          # --> action
          agc_7
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
    # 41:1: elem : (a= NUMBER | a= ID | a= STRING );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      a = nil

      begin
        # at line 41:9: (a= NUMBER | a= ID | a= STRING )
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
          # at line 41:11: a= NUMBER
          a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_471 )
          # --> action
          agc_1(a, 'int')
          # <-- action

        when 2
          # at line 41:40: a= ID
          a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_479 )
          # --> action
          agc_1(a, 'var')
          # <-- action

        when 3
          # at line 41:65: a= STRING
          a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_487 )
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
    # 42:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      t = nil

      begin
        # at line 42:27: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_12 = 4
        case look_12 = @input.peek( 1 )
        when T__24 then alt_12 = 1
        when T__25 then alt_12 = 2
        when T__26 then alt_12 = 3
        when T__27 then alt_12 = 4
        else
          raise NoViableAlternative( "", 12, 0 )
        end
        case alt_12
        when 1
          # at line 42:29: 'int'
          match( T__24, TOKENS_FOLLOWING_T__24_IN_type_503 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 42:48: 'float'
          match( T__25, TOKENS_FOLLOWING_T__25_IN_type_509 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 42:71: 'string'
          match( T__26, TOKENS_FOLLOWING_T__26_IN_type_515 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 42:96: 'boolean'
          match( T__27, TOKENS_FOLLOWING_T__27_IN_type_521 )
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



    TOKENS_FOLLOWING_MAIN_IN_prog_199 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_prog_201 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_214 = Set[ 8, 11, 17, 18, 19, 20, 23 ]
    TOKENS_FOLLOWING_est_IN_bloq_216 = Set[ 8, 11, 17, 18, 19, 20, 23 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_219 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_232 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_236 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_240 = Set[ 1 ]
    TOKENS_FOLLOWING_sIf_IN_est_244 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_258 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_260 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_comp_IN_sIf_262 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_264 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_266 = Set[ 1 ]
    TOKENS_FOLLOWING_T__23_IN_dclr_277 = Set[ 24, 25, 26, 27 ]
    TOKENS_FOLLOWING_type_IN_dclr_281 = Set[ 18 ]
    TOKENS_FOLLOWING_ID_IN_dclr_285 = Set[ 1, 14 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_290 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_comp_IN_dclr_295 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_311 = Set[ 14 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_313 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_comp_IN_asign_318 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_332 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_340 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_345 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_expr_IN_comp_353 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_term_IN_expr_371 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_379 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_384 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_term_IN_expr_392 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_410 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_419 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_DIV_IN_term_424 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_factor_IN_term_431 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_446 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_450 = Set[ 8, 18, 19, 20 ]
    TOKENS_FOLLOWING_expr_IN_factor_454 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_456 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_471 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_479 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_487 = Set[ 1 ]
    TOKENS_FOLLOWING_T__24_IN_type_503 = Set[ 1 ]
    TOKENS_FOLLOWING_T__25_IN_type_509 = Set[ 1 ]
    TOKENS_FOLLOWING_T__26_IN_type_515 = Set[ 1 ]
    TOKENS_FOLLOWING_T__27_IN_type_521 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-22 23:27:03
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
    define_tokens( :EQLS => 12, :T__23 => 23, :T__22 => 22, :T__21 => 21, 
                   :T__20 => 20, :NUMBER => 15, :MINUS => 5, :MULT => 6, 
                   :ID => 14, :EOF => -1, :LSTH => 11, :QTS => 13, :GRTH => 10, 
                   :T__19 => 19, :WS => 18, :LPAR => 8, :PLUS => 4, :RPAR => 9, 
                   :DIGIT => 17, :DIV => 7, :STRING => 16 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "GRTH", 
                    "LSTH", "EQLS", "QTS", "ID", "NUMBER", "STRING", "DIGIT", 
                    "WS", "'var'", "'int'", "'float'", "'string'", "'boolean'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :prog, :est, :dclr, :asign, :comp, :expr, :term, :factor, 
                     :elem, :type ].freeze


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
    # 27:1: prog : ( est )* ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 27:11: ( est )*
        # at line 27:11: ( est )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == LPAR || look_1_0.between?( ID, STRING ) || look_1_0 == T__19 )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 27:11: est
            @state.following.push( TOKENS_FOLLOWING_est_IN_prog_153 )
            est
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
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
    # parser rule est
    # 
    # (in Rapier.g)
    # 28:1: est : ( dclr | asign | comp ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 28:11: ( dclr | asign | comp )
        # at line 28:11: ( dclr | asign | comp )
        alt_2 = 3
        case look_2 = @input.peek( 1 )
        when T__19 then alt_2 = 1
        when ID then look_2_2 = @input.peek( 2 )

        if ( look_2_2 == EQLS )
          alt_2 = 2
        elsif ( look_2_2 == EOF || look_2_2.between?( PLUS, LPAR ) || look_2_2.between?( GRTH, LSTH ) || look_2_2.between?( ID, STRING ) || look_2_2 == T__19 )
          alt_2 = 3
        else
          raise NoViableAlternative( "", 2, 2 )
        end
        when LPAR, NUMBER, STRING then alt_2 = 3
        else
          raise NoViableAlternative( "", 2, 0 )
        end
        case alt_2
        when 1
          # at line 28:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_169 )
          dclr
          @state.following.pop

        when 2
          # at line 28:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_173 )
          asign
          @state.following.pop

        when 3
          # at line 28:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_177 )
          comp
          @state.following.pop

        end

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
    # parser rule dclr
    # 
    # (in Rapier.g)
    # 29:1: dclr : 'var' b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      a = nil
      b = nil

      begin
        # at line 29:11: 'var' b= type a= ID ( '=' comp )?
        match( T__19, TOKENS_FOLLOWING_T__19_IN_dclr_190 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_194 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_198 )
        # --> action
        agc_1(a,b)
        # <-- action
        # at line 29:42: ( '=' comp )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == EQLS )
          alt_3 = 1
        end
        case alt_3
        when 1
          # at line 29:43: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_203 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_208 )
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
        # trace_out( __method__, 3 )

      end
      
      return 
    end


    # 
    # parser rule asign
    # 
    # (in Rapier.g)
    # 30:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      a = nil

      begin
        # at line 30:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_224 )
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_226 )
        # --> action
        agc_2('=')
        # <-- action
        # --> action
        agc_1(a)
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_231 )
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
        # trace_out( __method__, 4 )

      end
      
      return 
    end


    # 
    # parser rule comp
    # 
    # (in Rapier.g)
    # 31:1: comp : ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 31:11: ( expr ) ( ( ( LSTH | GRTH ) ) ( expr ) )*
        # at line 31:11: ( expr )
        # at line 31:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_245 )
        expr
        @state.following.pop
        # --> action
        agc_5
        # <-- action

        # at line 31:25: ( ( ( LSTH | GRTH ) ) ( expr ) )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( GRTH, LSTH ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 31:26: ( ( LSTH | GRTH ) ) ( expr )
            # at line 31:26: ( ( LSTH | GRTH ) )
            # at line 31:27: ( LSTH | GRTH )
            # at line 31:27: ( LSTH | GRTH )
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
              # at line 31:29: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_253 )
              # --> action
              agc_2('<')
              # <-- action

            when 2
              # at line 31:48: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_258 )
              # --> action
              agc_2('>')
              # <-- action

            end

            # at line 31:69: ( expr )
            # at line 31:70: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_266 )
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
        # trace_out( __method__, 5 )

      end
      
      return 
    end


    # 
    # parser rule expr
    # 
    # (in Rapier.g)
    # 32:1: expr : ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      begin
        # at line 32:11: ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )*
        # at line 32:11: ( term )
        # at line 32:12: term
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_284 )
        term
        @state.following.pop
        # --> action
        agc_4
        # <-- action

        # at line 32:25: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( PLUS, MINUS ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 32:26: ( ( PLUS | MINUS ) ) ( term )
            # at line 32:26: ( ( PLUS | MINUS ) )
            # at line 32:27: ( PLUS | MINUS )
            # at line 32:27: ( PLUS | MINUS )
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
              # at line 32:29: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_292 )
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 32:48: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_297 )
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 32:70: ( term )
            # at line 32:71: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_305 )
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
        # trace_out( __method__, 6 )

      end
      
      return 
    end


    # 
    # parser rule term
    # 
    # (in Rapier.g)
    # 33:1: term : ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 33:11: ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )*
        # at line 33:11: ( factor )
        # at line 33:12: factor
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_323 )
        factor
        @state.following.pop
        # --> action
        agc_3
        # <-- action

        # at line 33:28: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( MULT, DIV ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 33:29: ( ( MULT | DIV ) ) ( factor )
            # at line 33:29: ( ( MULT | DIV ) )
            # at line 33:30: ( MULT | DIV )
            # at line 33:30: ( MULT | DIV )
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
              # at line 33:32: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_332 )
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 33:51: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_337 )
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 33:70: ( factor )
            # at line 33:71: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_344 )
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
        # trace_out( __method__, 7 )

      end
      
      return 
    end


    # 
    # parser rule factor
    # 
    # (in Rapier.g)
    # 34:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 34:9: ( elem | LPAR expr RPAR )
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
          # at line 34:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_359 )
          elem
          @state.following.pop

        when 2
          # at line 34:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_363 )
          # --> action
          agc_1('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_367 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_369 )
          # --> action
          agc_7
          # <-- action

        end
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
    # parser rule elem
    # 
    # (in Rapier.g)
    # 35:1: elem : (a= NUMBER | a= ID | a= STRING );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      a = nil

      begin
        # at line 35:9: (a= NUMBER | a= ID | a= STRING )
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
          # at line 35:11: a= NUMBER
          a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_384 )
          # --> action
          agc_1(a, 'int')
          # <-- action

        when 2
          # at line 35:40: a= ID
          a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_392 )
          # --> action
          agc_1(a, 'var')
          # <-- action

        when 3
          # at line 35:65: a= STRING
          a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_400 )
          # --> action
          agc_1(a, 'string')
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
    # parser rule type
    # 
    # (in Rapier.g)
    # 36:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      t = nil

      begin
        # at line 36:27: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_12 = 4
        case look_12 = @input.peek( 1 )
        when T__20 then alt_12 = 1
        when T__21 then alt_12 = 2
        when T__22 then alt_12 = 3
        when T__23 then alt_12 = 4
        else
          raise NoViableAlternative( "", 12, 0 )
        end
        case alt_12
        when 1
          # at line 36:29: 'int'
          match( T__20, TOKENS_FOLLOWING_T__20_IN_type_416 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 36:48: 'float'
          match( T__21, TOKENS_FOLLOWING_T__21_IN_type_422 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 36:71: 'string'
          match( T__22, TOKENS_FOLLOWING_T__22_IN_type_428 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 36:96: 'boolean'
          match( T__23, TOKENS_FOLLOWING_T__23_IN_type_434 )
          # --> action
          t='boolean'
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return t
    end



    TOKENS_FOLLOWING_est_IN_prog_153 = Set[ 1, 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_dclr_IN_est_169 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_173 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_177 = Set[ 1 ]
    TOKENS_FOLLOWING_T__19_IN_dclr_190 = Set[ 20, 21, 22, 23 ]
    TOKENS_FOLLOWING_type_IN_dclr_194 = Set[ 14 ]
    TOKENS_FOLLOWING_ID_IN_dclr_198 = Set[ 1, 12 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_203 = Set[ 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_comp_IN_dclr_208 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_224 = Set[ 12 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_226 = Set[ 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_comp_IN_asign_231 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_245 = Set[ 1, 10, 11 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_253 = Set[ 8, 10, 11, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_258 = Set[ 8, 10, 11, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_expr_IN_comp_266 = Set[ 1, 10, 11 ]
    TOKENS_FOLLOWING_term_IN_expr_284 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_292 = Set[ 4, 5, 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_297 = Set[ 4, 5, 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_term_IN_expr_305 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_323 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_332 = Set[ 6, 7, 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_DIV_IN_term_337 = Set[ 6, 7, 8, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_factor_IN_term_344 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_359 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_363 = Set[ 8, 9, 14, 15, 16, 19 ]
    TOKENS_FOLLOWING_expr_IN_factor_367 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_369 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_384 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_392 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_400 = Set[ 1 ]
    TOKENS_FOLLOWING_T__20_IN_type_416 = Set[ 1 ]
    TOKENS_FOLLOWING_T__21_IN_type_422 = Set[ 1 ]
    TOKENS_FOLLOWING_T__22_IN_type_428 = Set[ 1 ]
    TOKENS_FOLLOWING_T__23_IN_type_434 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-21 20:22:35
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
    define_tokens( :GRTH => 10, :WS => 15, :LPAR => 8, :NUMBER => 13, :RPAR => 9, 
                   :PLUS => 4, :DIGIT => 14, :DIV => 7, :MINUS => 5, :MULT => 6, 
                   :ID => 12, :EOF => -1, :LSTH => 11 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "GRTH", 
                    "LSTH", "ID", "NUMBER", "DIGIT", "WS" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :program, :comp, :expr, :term, :factor ].freeze


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
        require_relative 'AGCs.rb'

      # - - - - - - end action @parser::init - - - - - - -


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule program
    # 
    # (in Rapier.g)
    # 24:1: program : ( comp )* ;
    # 
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 24:11: ( comp )*
        # at line 24:11: ( comp )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == LPAR || look_1_0.between?( ID, NUMBER ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 24:12: comp
            @state.following.push( TOKENS_FOLLOWING_comp_IN_program_128 )
            comp
            @state.following.pop
            # --> action
            agc_6
            # <-- action

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1

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
    # parser rule comp
    # 
    # (in Rapier.g)
    # 25:1: comp : expr ( ( GRTH | LSTH ) expr )? ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 25:11: expr ( ( GRTH | LSTH ) expr )?
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_142 )
        expr
        @state.following.pop
        # at line 25:16: ( ( GRTH | LSTH ) expr )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( GRTH, LSTH ) )
          alt_3 = 1
        end
        case alt_3
        when 1
          # at line 25:17: ( GRTH | LSTH ) expr
          # at line 25:17: ( GRTH | LSTH )
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == GRTH )
            alt_2 = 1
          elsif ( look_2_0 == LSTH )
            alt_2 = 2
          else
            raise NoViableAlternative( "", 2, 0 )
          end
          case alt_2
          when 1
            # at line 25:18: GRTH
            match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_146 )
            # --> action
            agc_2('>')
            # <-- action

          when 2
            # at line 25:35: LSTH
            match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_149 )
            # --> action
            agc_2('<')
            # <-- action

          end
          @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_154 )
          expr
          @state.following.pop
          # --> action
          agc_5
          # <-- action

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
    # parser rule expr
    # 
    # (in Rapier.g)
    # 26:1: expr : ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 26:11: ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )*
        # at line 26:11: ( term )
        # at line 26:12: term
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_170 )
        term
        @state.following.pop
        # --> action
        agc_4
        # <-- action

        # at line 26:25: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( PLUS, MINUS ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 26:26: ( ( PLUS | MINUS ) ) ( term )
            # at line 26:26: ( ( PLUS | MINUS ) )
            # at line 26:27: ( PLUS | MINUS )
            # at line 26:27: ( PLUS | MINUS )
            alt_4 = 2
            look_4_0 = @input.peek( 1 )

            if ( look_4_0 == PLUS )
              alt_4 = 1
            elsif ( look_4_0 == MINUS )
              alt_4 = 2
            else
              raise NoViableAlternative( "", 4, 0 )
            end
            case alt_4
            when 1
              # at line 26:29: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_178 )
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 26:48: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_183 )
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 26:70: ( term )
            # at line 26:71: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_191 )
            term
            @state.following.pop
            # --> action
            agc_4
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
        # trace_out( __method__, 3 )

      end
      
      return 
    end


    # 
    # parser rule term
    # 
    # (in Rapier.g)
    # 27:1: term : ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 27:11: ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )*
        # at line 27:11: ( factor )
        # at line 27:12: factor
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_209 )
        factor
        @state.following.pop
        # --> action
        agc_3
        # <-- action

        # at line 27:28: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( MULT, DIV ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 27:29: ( ( MULT | DIV ) ) ( factor )
            # at line 27:29: ( ( MULT | DIV ) )
            # at line 27:30: ( MULT | DIV )
            # at line 27:30: ( MULT | DIV )
            alt_6 = 2
            look_6_0 = @input.peek( 1 )

            if ( look_6_0 == MULT )
              alt_6 = 1
            elsif ( look_6_0 == DIV )
              alt_6 = 2
            else
              raise NoViableAlternative( "", 6, 0 )
            end
            case alt_6
            when 1
              # at line 27:32: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_218 )
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 27:51: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_223 )
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 27:70: ( factor )
            # at line 27:71: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_230 )
            factor
            @state.following.pop
            # --> action
            agc_3
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
        # trace_out( __method__, 4 )

      end
      
      return 
    end


    # 
    # parser rule factor
    # 
    # (in Rapier.g)
    # 28:1: factor : ( (a= ID | a= NUMBER ) | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      a = nil

      begin
        # at line 28:9: ( (a= ID | a= NUMBER ) | LPAR expr RPAR )
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( ID, NUMBER ) )
          alt_9 = 1
        elsif ( look_9_0 == LPAR )
          alt_9 = 2
        else
          raise NoViableAlternative( "", 9, 0 )
        end
        case alt_9
        when 1
          # at line 28:11: (a= ID | a= NUMBER )
          # at line 28:11: (a= ID | a= NUMBER )
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == ID )
            alt_8 = 1
          elsif ( look_8_0 == NUMBER )
            alt_8 = 2
          else
            raise NoViableAlternative( "", 8, 0 )
          end
          case alt_8
          when 1
            # at line 28:12: a= ID
            a = match( ID, TOKENS_FOLLOWING_ID_IN_factor_248 )

          when 2
            # at line 28:19: a= NUMBER
            a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_factor_254 )

          end
          # --> action
          agc_1(a)
          # <-- action

        when 2
          # at line 28:42: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_261 )
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_263 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_265 )

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



    TOKENS_FOLLOWING_comp_IN_program_128 = Set[ 1, 8, 12, 13 ]
    TOKENS_FOLLOWING_expr_IN_comp_142 = Set[ 1, 10, 11 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_146 = Set[ 8, 12, 13 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_149 = Set[ 8, 12, 13 ]
    TOKENS_FOLLOWING_expr_IN_comp_154 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_expr_170 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_178 = Set[ 4, 5, 8, 12, 13 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_183 = Set[ 4, 5, 8, 12, 13 ]
    TOKENS_FOLLOWING_term_IN_expr_191 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_209 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_218 = Set[ 6, 7, 8, 12, 13 ]
    TOKENS_FOLLOWING_DIV_IN_term_223 = Set[ 6, 7, 8, 12, 13 ]
    TOKENS_FOLLOWING_factor_IN_term_230 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_ID_IN_factor_248 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_factor_254 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_261 = Set[ 8, 9, 12, 13 ]
    TOKENS_FOLLOWING_expr_IN_factor_263 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_265 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-05 06:37:42
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
    define_tokens( :T__42 => 42, :INTEGER => 30, :EQLS => 18, :T__43 => 43, 
                   :T__40 => 40, :T__41 => 41, :T__44 => 44, :SYMBOL => 34, 
                   :LETTER => 31, :ELSE => 22, :BOOL => 28, :NUMBER => 26, 
                   :LSTHE => 15, :FLOAT => 27, :LKEY => 10, :MULT => 6, 
                   :MINUS => 5, :AND => 16, :ID => 25, :SPACE => 35, :EOF => -1, 
                   :GRTHE => 14, :LSTH => 13, :QTS => 19, :IF => 21, :GRTH => 12, 
                   :WS => 38, :IN => 24, :LPAR => 8, :NONCONTROL_CHAR => 33, 
                   :OUT => 23, :T__39 => 39, :OR => 17, :RKEY => 11, :RPAR => 9, 
                   :PLUS => 4, :PROGRAM => 20, :DIGIT => 32, :LOWER => 36, 
                   :DIV => 7, :UPPER => 37, :STRING => 29 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Rapier
    include TokenData

    
    begin
      generated_using( "Rapier.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                     "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "AND", "OR", 
                     "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "OUT", "IN", 
                     "T__39", "T__40", "T__41", "T__42", "T__43", "T__44", 
                     "BOOL", "NUMBER", "FLOAT", "ID", "STRING", "NONCONTROL_CHAR", 
                     "LETTER", "INTEGER", "LOWER", "UPPER", "DIGIT", "SPACE", 
                     "SYMBOL", "WS" ].freeze
    RULE_METHODS = [ :plus!, :minus!, :mult!, :div!, :lpar!, :rpar!, :lkey!, 
                     :rkey!, :grth!, :lsth!, :grthe!, :lsthe!, :and!, :or!, 
                     :eqls!, :qts!, :program!, :if!, :else!, :out!, :in!, 
                     :t__39!, :t__40!, :t__41!, :t__42!, :t__43!, :t__44!, 
                     :bool!, :number!, :float!, :id!, :string!, :noncontrol_char!, 
                     :letter!, :integer!, :lower!, :upper!, :digit!, :space!, 
                     :symbol!, :ws! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule plus! (PLUS)
    # (in Rapier.g)
    def plus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = PLUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:8: '+'
      match( 0x2b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule minus! (MINUS)
    # (in Rapier.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: '-'
      match( 0x2d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule mult! (MULT)
    # (in Rapier.g)
    def mult!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = MULT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:8: '*'
      match( 0x2a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule div! (DIV)
    # (in Rapier.g)
    def div!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = DIV
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:7: '/'
      match( 0x2f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule lpar! (LPAR)
    # (in Rapier.g)
    def lpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = LPAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:8: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule rpar! (RPAR)
    # (in Rapier.g)
    def rpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = RPAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:8: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule lkey! (LKEY)
    # (in Rapier.g)
    def lkey!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = LKEY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:8: '{'
      match( 0x7b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule rkey! (RKEY)
    # (in Rapier.g)
    def rkey!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = RKEY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:8: '}'
      match( 0x7d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule grth! (GRTH)
    # (in Rapier.g)
    def grth!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = GRTH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:8: '>'
      match( 0x3e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule lsth! (LSTH)
    # (in Rapier.g)
    def lsth!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = LSTH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:8: '<'
      match( 0x3c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule grthe! (GRTHE)
    # (in Rapier.g)
    def grthe!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = GRTHE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: '>='
      match( ">=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule lsthe! (LSTHE)
    # (in Rapier.g)
    def lsthe!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = LSTHE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: '<='
      match( "<=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule and! (AND)
    # (in Rapier.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:7: '&'
      match( 0x26 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule or! (OR)
    # (in Rapier.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:6: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule eqls! (EQLS)
    # (in Rapier.g)
    def eqls!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = EQLS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:8: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule qts! (QTS)
    # (in Rapier.g)
    def qts!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = QTS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:7: '\"'
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule program! (PROGRAM)
    # (in Rapier.g)
    def program!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = PROGRAM
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:11: 'program'
      match( "program" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule if! (IF)
    # (in Rapier.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:6: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule else! (ELSE)
    # (in Rapier.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:8: 'else'
      match( "else" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule out! (OUT)
    # (in Rapier.g)
    def out!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = OUT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:7: 'out'
      match( "out" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule in! (IN)
    # (in Rapier.g)
    def in!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = IN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:6: 'in'
      match( "in" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__39! (T__39)
    # (in Rapier.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: ':'
      match( 0x3a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__40! (T__40)
    # (in Rapier.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: 'var'
      match( "var" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__41! (T__41)
    # (in Rapier.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: 'int'
      match( "int" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__42! (T__42)
    # (in Rapier.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: 'float'
      match( "float" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__43! (T__43)
    # (in Rapier.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: 'string'
      match( "string" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__44! (T__44)
    # (in Rapier.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: 'boolean'
      match( "boolean" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule bool! (BOOL)
    # (in Rapier.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: ( 'true' | 'false' )
      alt_1 = 2
      look_1_0 = @input.peek( 1 )

      if ( look_1_0 == 0x74 )
        alt_1 = 1
      elsif ( look_1_0 == 0x66 )
        alt_1 = 2
      else
        raise NoViableAlternative( "", 1, 0 )
      end
      case alt_1
      when 1
        # at line 37:11: 'true'
        match( "true" )

      when 2
        # at line 37:20: 'false'
        match( "false" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule number! (NUMBER)
    # (in Rapier.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:11: ( '-' )? ( INTEGER )+
      # at line 38:11: ( '-' )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == 0x2d )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 38:11: '-'
        match( 0x2d )

      end
      # at file 38:16: ( INTEGER )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x30, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 38:16: INTEGER
          integer!

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule float! (FLOAT)
    # (in Rapier.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:11: ( '-' )? ( INTEGER )+ '.' ( INTEGER )+
      # at line 39:11: ( '-' )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x2d )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 39:11: '-'
        match( 0x2d )

      end
      # at file 39:16: ( INTEGER )+
      match_count_5 = 0
      while true
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x30, 0x39 ) )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 39:16: INTEGER
          integer!

        else
          match_count_5 > 0 and break
          eee = EarlyExit(5)


          raise eee
        end
        match_count_5 += 1
      end

      match( 0x2e )
      # at file 39:29: ( INTEGER )+
      match_count_6 = 0
      while true
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( 0x30, 0x39 ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 39:29: INTEGER
          integer!

        else
          match_count_6 > 0 and break
          eee = EarlyExit(6)


          raise eee
        end
        match_count_6 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule id! (ID)
    # (in Rapier.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:5: LETTER ( LETTER | DIGIT | '_' )*
      letter!
      # at line 40:12: ( LETTER | DIGIT | '_' )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( 0x30, 0x39 ) || look_7_0.between?( 0x41, 0x5a ) || look_7_0 == 0x5f || look_7_0.between?( 0x61, 0x7a ) )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 7
        end
      end # loop for decision 7

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule string! (STRING)
    # (in Rapier.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: '\"' ( NONCONTROL_CHAR )* '\"'
      match( 0x22 )
      # at line 41:13: ( NONCONTROL_CHAR )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == 0x9 || look_8_0.between?( 0x20, 0x21 ) || look_8_0.between?( 0x23, 0x7e ) )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 41:13: NONCONTROL_CHAR
          noncontrol_char!

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule noncontrol_char! (NONCONTROL_CHAR)
    # (in Rapier.g)
    def noncontrol_char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x9 || @input.peek( 1 ).between?( 0x20, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x7e )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule letter! (LETTER)
    # (in Rapier.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule integer! (INTEGER)
    # (in Rapier.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      
      # - - - - main rule block - - - -
      # at line 44:19: '0' .. '9'
      match_range( 0x30, 0x39 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule lower! (LOWER)
    # (in Rapier.g)
    def lower!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      
      # - - - - main rule block - - - -
      # at line 45:17: 'a' .. 'z'
      match_range( 0x61, 0x7a )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule upper! (UPPER)
    # (in Rapier.g)
    def upper!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      
      # - - - - main rule block - - - -
      # at line 46:17: 'A' .. 'Z'
      match_range( 0x41, 0x5a )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule digit! (DIGIT)
    # (in Rapier.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      
      # - - - - main rule block - - - -
      # at line 47:17: '0' .. '9'
      match_range( 0x30, 0x39 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule space! (SPACE)
    # (in Rapier.g)
    def space!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule symbol! (SYMBOL)
    # (in Rapier.g)
    def symbol!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x21 || @input.peek( 1 ).between?( 0x23, 0x2f ) || @input.peek( 1 ).between?( 0x3a, 0x40 ) || @input.peek( 1 ).between?( 0x5b, 0x60 ) || @input.peek( 1 ).between?( 0x7b, 0x7e )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule ws! (WS)
    # (in Rapier.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:6: ( ' ' | '\\t' | '\\r' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | GRTHE | LSTHE | AND | OR | EQLS | QTS | PROGRAM | IF | ELSE | OUT | IN | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | BOOL | NUMBER | FLOAT | ID | STRING | WS )
      alt_9 = 33
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 1:10: PLUS
        plus!

      when 2
        # at line 1:15: MINUS
        minus!

      when 3
        # at line 1:21: MULT
        mult!

      when 4
        # at line 1:26: DIV
        div!

      when 5
        # at line 1:30: LPAR
        lpar!

      when 6
        # at line 1:35: RPAR
        rpar!

      when 7
        # at line 1:40: LKEY
        lkey!

      when 8
        # at line 1:45: RKEY
        rkey!

      when 9
        # at line 1:50: GRTH
        grth!

      when 10
        # at line 1:55: LSTH
        lsth!

      when 11
        # at line 1:60: GRTHE
        grthe!

      when 12
        # at line 1:66: LSTHE
        lsthe!

      when 13
        # at line 1:72: AND
        and!

      when 14
        # at line 1:76: OR
        or!

      when 15
        # at line 1:79: EQLS
        eqls!

      when 16
        # at line 1:84: QTS
        qts!

      when 17
        # at line 1:88: PROGRAM
        program!

      when 18
        # at line 1:96: IF
        if!

      when 19
        # at line 1:99: ELSE
        else!

      when 20
        # at line 1:104: OUT
        out!

      when 21
        # at line 1:108: IN
        in!

      when 22
        # at line 1:111: T__39
        t__39!

      when 23
        # at line 1:117: T__40
        t__40!

      when 24
        # at line 1:123: T__41
        t__41!

      when 25
        # at line 1:129: T__42
        t__42!

      when 26
        # at line 1:135: T__43
        t__43!

      when 27
        # at line 1:141: T__44
        t__44!

      when 28
        # at line 1:147: BOOL
        bool!

      when 29
        # at line 1:152: NUMBER
        number!

      when 30
        # at line 1:159: FLOAT
        float!

      when 31
        # at line 1:165: ID
        id!

      when 32
        # at line 1:168: STRING
        string!

      when 33
        # at line 1:175: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 2, -1, 1, 28, 6, -1, 1, 30, 1, 32, 3, -1, 1, 33, 4, 
                    26, 1, -1, 5, 26, 1, 46, 9, -1, 1, 26, 1, 49, 1, 51, 
                    8, 26, 2, -1, 1, 26, 1, -1, 1, 61, 1, -1, 1, 26, 1, 
                    63, 1, 64, 6, 26, 1, -1, 1, 71, 2, -1, 4, 26, 1, 76, 
                    1, 26, 1, -1, 1, 78, 1, 76, 2, 26, 1, -1, 1, 26, 1, 
                    -1, 1, 82, 1, 26, 1, 84, 1, -1, 1, 85, 2, -1 )
      EOF = unpack( 86, -1 )
      MIN = unpack( 1, 9, 1, -1, 1, 48, 6, -1, 2, 61, 3, -1, 1, 9, 1, 114, 
                    1, 102, 1, 108, 1, 117, 1, -1, 2, 97, 1, 116, 1, 111, 
                    1, 114, 1, 46, 9, -1, 1, 111, 2, 48, 1, 115, 1, 116, 
                    1, 114, 1, 111, 1, 108, 1, 114, 1, 111, 1, 117, 2, -1, 
                    1, 103, 1, -1, 1, 48, 1, -1, 1, 101, 2, 48, 1, 97, 1, 
                    115, 1, 105, 1, 108, 1, 101, 1, 114, 1, -1, 1, 48, 2, 
                    -1, 1, 116, 1, 101, 1, 110, 1, 101, 1, 48, 1, 97, 1, 
                    -1, 2, 48, 1, 103, 1, 97, 1, -1, 1, 109, 1, -1, 1, 48, 
                    1, 110, 1, 48, 1, -1, 1, 48, 2, -1 )
      MAX = unpack( 1, 125, 1, -1, 1, 57, 6, -1, 2, 61, 3, -1, 1, 126, 1, 
                    114, 1, 110, 1, 108, 1, 117, 1, -1, 1, 97, 1, 108, 1, 
                    116, 1, 111, 1, 114, 1, 57, 9, -1, 1, 111, 2, 122, 1, 
                    115, 1, 116, 1, 114, 1, 111, 1, 108, 1, 114, 1, 111, 
                    1, 117, 2, -1, 1, 103, 1, -1, 1, 122, 1, -1, 1, 101, 
                    2, 122, 1, 97, 1, 115, 1, 105, 1, 108, 1, 101, 1, 114, 
                    1, -1, 1, 122, 2, -1, 1, 116, 1, 101, 1, 110, 1, 101, 
                    1, 122, 1, 97, 1, -1, 2, 122, 1, 103, 1, 97, 1, -1, 
                    1, 109, 1, -1, 1, 122, 1, 110, 1, 122, 1, -1, 1, 122, 
                    2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 2, -1, 1, 13, 1, 14, 1, 15, 5, -1, 1, 22, 6, 
                       -1, 1, 31, 1, 33, 1, 2, 1, 11, 1, 9, 1, 12, 1, 10, 
                       1, 16, 1, 32, 11, -1, 1, 29, 1, 30, 1, -1, 1, 18, 
                       1, -1, 1, 21, 9, -1, 1, 24, 1, -1, 1, 20, 1, 23, 
                       6, -1, 1, 19, 4, -1, 1, 28, 1, -1, 1, 25, 3, -1, 
                       1, 26, 1, -1, 1, 17, 1, 27 )
      SPECIAL = unpack( 86, -1 )
      TRANSITION = [
        unpack( 2, 27, 2, -1, 1, 27, 18, -1, 1, 27, 1, -1, 1, 14, 3, -1, 
                1, 11, 1, -1, 1, 5, 1, 6, 1, 3, 1, 1, 1, -1, 1, 2, 1, -1, 
                1, 4, 10, 25, 1, 19, 1, -1, 1, 10, 1, 13, 1, 9, 2, -1, 26, 
                26, 6, -1, 1, 26, 1, 23, 2, 26, 1, 17, 1, 21, 2, 26, 1, 
                16, 5, 26, 1, 18, 1, 15, 2, 26, 1, 22, 1, 24, 1, 26, 1, 
                20, 4, 26, 1, 7, 1, 12, 1, 8 ),
        unpack(  ),
        unpack( 10, 25 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 29 ),
        unpack( 1, 31 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 34, 22, -1, 95, 34 ),
        unpack( 1, 35 ),
        unpack( 1, 36, 7, -1, 1, 37 ),
        unpack( 1, 38 ),
        unpack( 1, 39 ),
        unpack(  ),
        unpack( 1, 40 ),
        unpack( 1, 42, 10, -1, 1, 41 ),
        unpack( 1, 43 ),
        unpack( 1, 44 ),
        unpack( 1, 45 ),
        unpack( 1, 47, 1, -1, 10, 25 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 48 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 19, 26, 1, 
                 50, 6, 26 ),
        unpack( 1, 52 ),
        unpack( 1, 53 ),
        unpack( 1, 54 ),
        unpack( 1, 55 ),
        unpack( 1, 56 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack( 1, 59 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 60 ),
        unpack(  ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack(  ),
        unpack( 1, 62 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 1, 65 ),
        unpack( 1, 66 ),
        unpack( 1, 67 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
        unpack( 1, 70 ),
        unpack(  ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 72 ),
        unpack( 1, 73 ),
        unpack( 1, 74 ),
        unpack( 1, 75 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 1, 77 ),
        unpack(  ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 1, 79 ),
        unpack( 1, 80 ),
        unpack(  ),
        unpack( 1, 81 ),
        unpack(  ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack( 1, 83 ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack(  ),
        unpack( 10, 26, 7, -1, 26, 26, 4, -1, 1, 26, 1, -1, 26, 26 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 9
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | GRTHE | LSTHE | AND | OR | EQLS | QTS | PROGRAM | IF | ELSE | OUT | IN | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | BOOL | NUMBER | FLOAT | ID | STRING | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa9 = DFA9.new( self, 9 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end


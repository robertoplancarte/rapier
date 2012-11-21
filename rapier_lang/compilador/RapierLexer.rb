#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-21 00:46:50
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
    define_tokens( :WHILE => 24, :LETTER => 34, :FLOAT => 30, :ID => 28, 
                   :AND => 17, :SPACE => 38, :EOF => -1, :IF => 22, :IN => 27, 
                   :LPAR => 8, :RKEY => 11, :PLUS => 4, :DIGIT => 35, :INTEGER => 33, 
                   :T__42 => 42, :T__43 => 43, :EQLS => 19, :T__46 => 46, 
                   :T__47 => 47, :T__44 => 44, :SYMBOL => 37, :T__45 => 45, 
                   :ELSE => 23, :LSTHE => 15, :NUMBER => 29, :BOOL => 31, 
                   :LKEY => 10, :MULT => 6, :MINUS => 5, :EXEQ => 16, :GRTHE => 14, 
                   :LSTH => 13, :QTS => 20, :OUTS => 26, :GRTH => 12, :WS => 41, 
                   :NONCONTROL_CHAR => 36, :OUT => 25, :OR => 18, :PROGRAM => 21, 
                   :RPAR => 9, :LOWER => 39, :DIV => 7, :UPPER => 40, :STRING => 32 )
    
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
                     "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "EXEQ", "AND", 
                     "OR", "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "WHILE", 
                     "OUT", "OUTS", "IN", "T__42", "T__43", "T__44", "T__45", 
                     "T__46", "T__47", "BOOL", "NUMBER", "FLOAT", "ID", 
                     "STRING", "NONCONTROL_CHAR", "LETTER", "INTEGER", "LOWER", 
                     "UPPER", "DIGIT", "SPACE", "SYMBOL", "WS" ].freeze
    RULE_METHODS = [ :plus!, :minus!, :mult!, :div!, :lpar!, :rpar!, :lkey!, 
                     :rkey!, :grth!, :lsth!, :grthe!, :lsthe!, :exeq!, :and!, 
                     :or!, :eqls!, :qts!, :program!, :if!, :else!, :while!, 
                     :out!, :outs!, :in!, :t__42!, :t__43!, :t__44!, :t__45!, 
                     :t__46!, :t__47!, :bool!, :number!, :float!, :id!, 
                     :string!, :noncontrol_char!, :letter!, :integer!, :lower!, 
                     :upper!, :digit!, :space!, :symbol!, :ws! ].freeze

    
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

    # lexer rule exeq! (EXEQ)
    # (in Rapier.g)
    def exeq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = EXEQ
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:8: '=='
      match( "==" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule and! (AND)
    # (in Rapier.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:7: '&'
      match( 0x26 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule or! (OR)
    # (in Rapier.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:6: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule eqls! (EQLS)
    # (in Rapier.g)
    def eqls!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = EQLS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:8: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule qts! (QTS)
    # (in Rapier.g)
    def qts!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = QTS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:7: '\"'
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule program! (PROGRAM)
    # (in Rapier.g)
    def program!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = PROGRAM
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:11: 'program'
      match( "program" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule if! (IF)
    # (in Rapier.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:6: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule else! (ELSE)
    # (in Rapier.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:8: 'else'
      match( "else" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule while! (WHILE)
    # (in Rapier.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: 'while'
      match( "while" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule out! (OUT)
    # (in Rapier.g)
    def out!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = OUT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:7: 'out'
      match( "out" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule outs! (OUTS)
    # (in Rapier.g)
    def outs!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = OUTS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:8: 'outln'
      match( "outln" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule in! (IN)
    # (in Rapier.g)
    def in!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = IN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:6: 'in'
      match( "in" )

      
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
      # at line 33:9: ':'
      match( 0x3a )

      
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
      # at line 34:9: ';'
      match( 0x3b )

      
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
      # at line 35:9: 'int'
      match( "int" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__45! (T__45)
    # (in Rapier.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: 'float'
      match( "float" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__46! (T__46)
    # (in Rapier.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: 'string'
      match( "string" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__47! (T__47)
    # (in Rapier.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: 'boolean'
      match( "boolean" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule bool! (BOOL)
    # (in Rapier.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 58:9: ( 'true' | 'false' )
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
        # at line 58:11: 'true'
        match( "true" )

      when 2
        # at line 58:20: 'false'
        match( "false" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule number! (NUMBER)
    # (in Rapier.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 59:12: ( INTEGER )+
      # at file 59:12: ( INTEGER )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x30, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 59:12: INTEGER
          integer!

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule float! (FLOAT)
    # (in Rapier.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 60:12: ( INTEGER )+ '.' ( INTEGER )+
      # at file 60:12: ( INTEGER )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x30, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 60:12: INTEGER
          integer!

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end

      match( 0x2e )
      # at file 60:25: ( INTEGER )+
      match_count_4 = 0
      while true
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( 0x30, 0x39 ) )
          alt_4 = 1

        end
        case alt_4
        when 1
          # at line 60:25: INTEGER
          integer!

        else
          match_count_4 > 0 and break
          eee = EarlyExit(4)


          raise eee
        end
        match_count_4 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule id! (ID)
    # (in Rapier.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 61:5: LETTER ( LETTER | DIGIT | '_' )*
      letter!
      # at line 61:12: ( LETTER | DIGIT | '_' )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x30, 0x39 ) || look_5_0.between?( 0x41, 0x5a ) || look_5_0 == 0x5f || look_5_0.between?( 0x61, 0x7a ) )
          alt_5 = 1

        end
        case alt_5
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
          break # out of loop for decision 5
        end
      end # loop for decision 5

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule string! (STRING)
    # (in Rapier.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 62:9: '\"' ( NONCONTROL_CHAR )* '\"'
      match( 0x22 )
      # at line 62:13: ( NONCONTROL_CHAR )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == 0x9 || look_6_0.between?( 0x20, 0x21 ) || look_6_0.between?( 0x23, 0x7e ) || look_6_0 == 0xe1 || look_6_0 == 0xe9 || look_6_0 == 0xed || look_6_0 == 0xf1 || look_6_0 == 0xf3 || look_6_0 == 0xfa )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 62:13: NONCONTROL_CHAR
          noncontrol_char!

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule noncontrol_char! (NONCONTROL_CHAR)
    # (in Rapier.g)
    def noncontrol_char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      
      # - - - - main rule block - - - -
      # at line 63:25: ( LETTER | DIGIT | SYMBOL | SPACE )
      alt_7 = 4
      case look_7 = @input.peek( 1 )
      when 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a then alt_7 = 1
      when 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39 then alt_7 = 2
      when 0x21, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x7b, 0x7c, 0x7d, 0x7e, 0xe1, 0xe9, 0xed, 0xf1, 0xf3, 0xfa then alt_7 = 3
      when 0x9, 0x20 then alt_7 = 4
      else
        raise NoViableAlternative( "", 7, 0 )
      end
      case alt_7
      when 1
        # at line 63:27: LETTER
        letter!

      when 2
        # at line 63:36: DIGIT
        digit!

      when 3
        # at line 63:44: SYMBOL
        symbol!

      when 4
        # at line 63:53: SPACE
        space!

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule letter! (LETTER)
    # (in Rapier.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      
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
      # trace_out( __method__, 37 )

    end

    # lexer rule integer! (INTEGER)
    # (in Rapier.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      
      # - - - - main rule block - - - -
      # at line 65:19: '0' .. '9'
      match_range( 0x30, 0x39 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule lower! (LOWER)
    # (in Rapier.g)
    def lower!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      
      # - - - - main rule block - - - -
      # at line 66:17: 'a' .. 'z'
      match_range( 0x61, 0x7a )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule upper! (UPPER)
    # (in Rapier.g)
    def upper!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      
      # - - - - main rule block - - - -
      # at line 67:17: 'A' .. 'Z'
      match_range( 0x41, 0x5a )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule digit! (DIGIT)
    # (in Rapier.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      
      # - - - - main rule block - - - -
      # at line 68:17: '0' .. '9'
      match_range( 0x30, 0x39 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule space! (SPACE)
    # (in Rapier.g)
    def space!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      
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
      # trace_out( __method__, 42 )

    end

    # lexer rule symbol! (SYMBOL)
    # (in Rapier.g)
    def symbol!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      
      # - - - - main rule block - - - -
      # at line 70:16: ( '!' | '#' .. '/' | ':' .. '@' | '[' .. '`' | '{' .. '~' | '\\\\\\\"' | 'á' | 'é' | 'í' | 'ó' | 'ú' | 'ñ' )
      alt_8 = 12
      alt_8 = @dfa8.predict( @input )
      case alt_8
      when 1
        # at line 70:18: '!'
        match( 0x21 )

      when 2
        # at line 70:24: '#' .. '/'
        match_range( 0x23, 0x2f )

      when 3
        # at line 70:35: ':' .. '@'
        match_range( 0x3a, 0x40 )

      when 4
        # at line 70:46: '[' .. '`'
        match_range( 0x5b, 0x60 )

      when 5
        # at line 70:57: '{' .. '~'
        match_range( 0x7b, 0x7e )

      when 6
        # at line 70:68: '\\\\\\\"'
        match( "\\\"" )

      when 7
        # at line 70:77: 'á'
        match( 0xe1 )

      when 8
        # at line 70:82: 'é'
        match( 0xe9 )

      when 9
        # at line 70:87: 'í'
        match( 0xed )

      when 10
        # at line 70:92: 'ó'
        match( 0xf3 )

      when 11
        # at line 70:98: 'ú'
        match( 0xfa )

      when 12
        # at line 70:103: 'ñ'
        match( 0xf1 )

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule ws! (WS)
    # (in Rapier.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 71:6: ( ' ' | '\\t' | '\\r' | '\\n' )
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
      # trace_out( __method__, 44 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | GRTHE | LSTHE | EXEQ | AND | OR | EQLS | QTS | PROGRAM | IF | ELSE | WHILE | OUT | OUTS | IN | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | BOOL | NUMBER | FLOAT | ID | STRING | WS )
      alt_9 = 36
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
        # at line 1:72: EXEQ
        exeq!

      when 14
        # at line 1:77: AND
        and!

      when 15
        # at line 1:81: OR
        or!

      when 16
        # at line 1:84: EQLS
        eqls!

      when 17
        # at line 1:89: QTS
        qts!

      when 18
        # at line 1:93: PROGRAM
        program!

      when 19
        # at line 1:101: IF
        if!

      when 20
        # at line 1:104: ELSE
        else!

      when 21
        # at line 1:109: WHILE
        while!

      when 22
        # at line 1:115: OUT
        out!

      when 23
        # at line 1:119: OUTS
        outs!

      when 24
        # at line 1:124: IN
        in!

      when 25
        # at line 1:127: T__42
        t__42!

      when 26
        # at line 1:133: T__43
        t__43!

      when 27
        # at line 1:139: T__44
        t__44!

      when 28
        # at line 1:145: T__45
        t__45!

      when 29
        # at line 1:151: T__46
        t__46!

      when 30
        # at line 1:157: T__47
        t__47!

      when 31
        # at line 1:163: BOOL
        bool!

      when 32
        # at line 1:168: NUMBER
        number!

      when 33
        # at line 1:175: FLOAT
        float!

      when 34
        # at line 1:181: ID
        id!

      when 35
        # at line 1:184: STRING
        string!

      when 36
        # at line 1:191: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA8 < ANTLR3::DFA
      EOT = unpack( 4, -1, 1, 6, 9, -1 )
      EOF = unpack( 14, -1 )
      MIN = unpack( 1, 33, 3, -1, 1, 34, 9, -1 )
      MAX = unpack( 1, 250, 3, -1, 1, 34, 9, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, -1, 1, 5, 1, 4, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 6 )
      SPECIAL = unpack( 14, -1 )
      TRANSITION = [
        unpack( 1, 1, 1, -1, 13, 2, 10, -1, 7, 3, 26, -1, 1, 6, 1, 4, 4, 
                6, 26, -1, 4, 5, 98, -1, 1, 7, 7, -1, 1, 8, 3, -1, 1, 9, 
                3, -1, 1, 12, 1, -1, 1, 10, 6, -1, 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 13 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          70:10: fragment SYMBOL : ( '!' | '#' .. '/' | ':' .. '@' | '[' .. '`' | '{' .. '~' | '\\\\\\\"' | 'á' | 'é' | 'í' | 'ó' | 'ú' | 'ñ' );
        __dfa_description__
      end
    end
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 9, -1, 1, 30, 1, 32, 1, 34, 2, -1, 1, 35, 5, 27, 2, 
                    -1, 4, 27, 1, 48, 10, -1, 1, 27, 1, 51, 1, 53, 8, 27, 
                    2, -1, 1, 27, 1, -1, 1, 63, 1, -1, 2, 27, 1, 67, 6, 
                    27, 1, -1, 1, 74, 2, 27, 1, -1, 4, 27, 1, 81, 1, 27, 
                    1, -1, 1, 83, 1, 84, 1, 85, 1, 81, 2, 27, 1, -1, 1, 
                    27, 3, -1, 1, 89, 1, 27, 1, 91, 1, -1, 1, 92, 2, -1 )
      EOF = unpack( 93, -1 )
      MIN = unpack( 1, 9, 8, -1, 3, 61, 2, -1, 1, 9, 1, 114, 1, 102, 1, 
                    108, 1, 104, 1, 117, 2, -1, 1, 97, 1, 116, 1, 111, 1, 
                    114, 1, 46, 10, -1, 1, 111, 2, 48, 1, 115, 1, 105, 1, 
                    116, 1, 111, 1, 108, 1, 114, 1, 111, 1, 117, 2, -1, 
                    1, 103, 1, -1, 1, 48, 1, -1, 1, 101, 1, 108, 1, 48, 
                    1, 97, 1, 115, 1, 105, 1, 108, 1, 101, 1, 114, 1, -1, 
                    1, 48, 1, 101, 1, 110, 1, -1, 1, 116, 1, 101, 1, 110, 
                    1, 101, 1, 48, 1, 97, 1, -1, 4, 48, 1, 103, 1, 97, 1, 
                    -1, 1, 109, 3, -1, 1, 48, 1, 110, 1, 48, 1, -1, 1, 48, 
                    2, -1 )
      MAX = unpack( 1, 125, 8, -1, 3, 61, 2, -1, 1, 250, 1, 114, 1, 110, 
                    1, 108, 1, 104, 1, 117, 2, -1, 1, 108, 1, 116, 1, 111, 
                    1, 114, 1, 57, 10, -1, 1, 111, 2, 122, 1, 115, 1, 105, 
                    1, 116, 1, 111, 1, 108, 1, 114, 1, 111, 1, 117, 2, -1, 
                    1, 103, 1, -1, 1, 122, 1, -1, 1, 101, 1, 108, 1, 122, 
                    1, 97, 1, 115, 1, 105, 1, 108, 1, 101, 1, 114, 1, -1, 
                    1, 122, 1, 101, 1, 110, 1, -1, 1, 116, 1, 101, 1, 110, 
                    1, 101, 1, 122, 1, 97, 1, -1, 4, 122, 1, 103, 1, 97, 
                    1, -1, 1, 109, 3, -1, 1, 122, 1, 110, 1, 122, 1, -1, 
                    1, 122, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 3, -1, 1, 14, 1, 15, 6, -1, 1, 25, 1, 26, 5, 
                       -1, 1, 34, 1, 36, 1, 11, 1, 9, 1, 12, 1, 10, 1, 13, 
                       1, 16, 1, 17, 1, 35, 11, -1, 1, 32, 1, 33, 1, -1, 
                       1, 19, 1, -1, 1, 24, 9, -1, 1, 27, 3, -1, 1, 22, 
                       6, -1, 1, 20, 6, -1, 1, 31, 1, -1, 1, 21, 1, 23, 
                       1, 28, 3, -1, 1, 29, 1, -1, 1, 18, 1, 30 )
      SPECIAL = unpack( 93, -1 )
      TRANSITION = [
        unpack( 2, 28, 2, -1, 1, 28, 18, -1, 1, 28, 1, -1, 1, 14, 3, -1, 
                1, 12, 1, -1, 1, 5, 1, 6, 1, 3, 1, 1, 1, -1, 1, 2, 1, -1, 
                1, 4, 10, 26, 1, 20, 1, 21, 1, 10, 1, 11, 1, 9, 2, -1, 26, 
                27, 6, -1, 1, 27, 1, 24, 2, 27, 1, 17, 1, 22, 2, 27, 1, 
                16, 5, 27, 1, 19, 1, 15, 2, 27, 1, 23, 1, 25, 2, 27, 1, 
                18, 3, 27, 1, 7, 1, 13, 1, 8 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 29 ),
        unpack( 1, 31 ),
        unpack( 1, 33 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 36, 22, -1, 95, 36, 98, -1, 1, 36, 7, -1, 1, 36, 3, 
                 -1, 1, 36, 3, -1, 1, 36, 1, -1, 1, 36, 6, -1, 1, 36 ),
        unpack( 1, 37 ),
        unpack( 1, 38, 7, -1, 1, 39 ),
        unpack( 1, 40 ),
        unpack( 1, 41 ),
        unpack( 1, 42 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 44, 10, -1, 1, 43 ),
        unpack( 1, 45 ),
        unpack( 1, 46 ),
        unpack( 1, 47 ),
        unpack( 1, 49, 1, -1, 10, 26 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 50 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 19, 27, 1, 
                 52, 6, 27 ),
        unpack( 1, 54 ),
        unpack( 1, 55 ),
        unpack( 1, 56 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack( 1, 59 ),
        unpack( 1, 60 ),
        unpack( 1, 61 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 62 ),
        unpack(  ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack(  ),
        unpack( 1, 64 ),
        unpack( 1, 65 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 11, 27, 1, 
                 66, 14, 27 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
        unpack( 1, 70 ),
        unpack( 1, 71 ),
        unpack( 1, 72 ),
        unpack( 1, 73 ),
        unpack(  ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 1, 75 ),
        unpack( 1, 76 ),
        unpack(  ),
        unpack( 1, 77 ),
        unpack( 1, 78 ),
        unpack( 1, 79 ),
        unpack( 1, 80 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 1, 82 ),
        unpack(  ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 1, 86 ),
        unpack( 1, 87 ),
        unpack(  ),
        unpack( 1, 88 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack( 1, 90 ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
        unpack(  ),
        unpack( 10, 27, 7, -1, 26, 27, 4, -1, 1, 27, 1, -1, 26, 27 ),
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
          1:1: Tokens : ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | GRTHE | LSTHE | EXEQ | AND | OR | EQLS | QTS | PROGRAM | IF | ELSE | WHILE | OUT | OUTS | IN | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | BOOL | NUMBER | FLOAT | ID | STRING | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa8 = DFA8.new( self, 8 )
      @dfa9 = DFA9.new( self, 9 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end


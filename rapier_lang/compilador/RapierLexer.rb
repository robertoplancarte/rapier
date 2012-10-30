#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-30 06:56:50
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
                   :T__27 => 27, :T__26 => 26, :BOOL => 23, :NUMBER => 21, 
                   :FLOAT => 22, :MINUS => 5, :MULT => 6, :LKEY => 10, :ID => 20, 
                   :AND => 14, :EOF => -1, :LSTH => 13, :QTS => 17, :IF => 19, 
                   :GRTH => 12, :T__30 => 30, :WS => 25, :LPAR => 8, :OR => 15, 
                   :RKEY => 11, :RPAR => 9, :PLUS => 4, :DIV => 7, :STRING => 24 )
    
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
                     "RKEY", "GRTH", "LSTH", "AND", "OR", "EQLS", "QTS", 
                     "MAIN", "IF", "T__26", "T__27", "T__28", "T__29", "T__30", 
                     "NUMBER", "FLOAT", "BOOL", "ID", "WS", "STRING" ].freeze
    RULE_METHODS = [ :plus!, :minus!, :mult!, :div!, :lpar!, :rpar!, :lkey!, 
                     :rkey!, :grth!, :lsth!, :and!, :or!, :eqls!, :qts!, 
                     :main!, :if!, :t__26!, :t__27!, :t__28!, :t__29!, :t__30!, 
                     :number!, :float!, :bool!, :id!, :ws!, :string! ].freeze

    
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

    # lexer rule and! (AND)
    # (in Rapier.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:7: '&'
      match( 0x26 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule or! (OR)
    # (in Rapier.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:6: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule eqls! (EQLS)
    # (in Rapier.g)
    def eqls!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = EQLS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:8: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule qts! (QTS)
    # (in Rapier.g)
    def qts!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = QTS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:7: '\"'
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule main! (MAIN)
    # (in Rapier.g)
    def main!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = MAIN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:8: 'main'
      match( "main" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule if! (IF)
    # (in Rapier.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:6: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__26! (T__26)
    # (in Rapier.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: 'var'
      match( "var" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__27! (T__27)
    # (in Rapier.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'int'
      match( "int" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__28! (T__28)
    # (in Rapier.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: 'float'
      match( "float" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__29! (T__29)
    # (in Rapier.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: 'string'
      match( "string" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__30! (T__30)
    # (in Rapier.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: 'boolean'
      match( "boolean" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule number! (NUMBER)
    # (in Rapier.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:11: ( '0' .. '9' )+
      # at file 48:11: ( '0' .. '9' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 48:11: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule float! (FLOAT)
    # (in Rapier.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:11: ( '0' .. '9' )+ '.' ( '0' .. '9' )+
      # at file 49:11: ( '0' .. '9' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x30, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 49:11: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end

      match( 0x2e )
      # at file 49:25: ( '0' .. '9' )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x30, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 49:25: '0' .. '9'
          match_range( 0x30, 0x39 )

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
      # trace_out( __method__, 23 )

    end

    # lexer rule bool! (BOOL)
    # (in Rapier.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: ( 'true' | 'false' )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x74 )
        alt_4 = 1
      elsif ( look_4_0 == 0x66 )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )
      end
      case alt_4
      when 1
        # at line 50:11: 'true'
        match( "true" )

      when 2
        # at line 50:20: 'false'
        match( "false" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule id! (ID)
    # (in Rapier.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:11: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 51:35: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
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
      # trace_out( __method__, 25 )

    end

    # lexer rule ws! (WS)
    # (in Rapier.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 52:11: ( ' ' | '\\t' | '\\r' | '\\n' )
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
      # trace_out( __method__, 26 )

    end

    # lexer rule string! (STRING)
    # (in Rapier.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 53:9: QTS (~ '\\n' )* QTS
      qts!
      # at line 53:13: (~ '\\n' )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == 0x22 )
          look_6_1 = @input.peek( 2 )

          if ( look_6_1.between?( 0x0, 0x9 ) || look_6_1.between?( 0xb, 0xffff ) )
            alt_6 = 1

          end
        elsif ( look_6_0.between?( 0x0, 0x9 ) || look_6_0.between?( 0xb, 0x21 ) || look_6_0.between?( 0x23, 0xffff ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 53:14: ~ '\\n'
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 6
        end
      end # loop for decision 6
      qts!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | AND | OR | EQLS | QTS | MAIN | IF | T__26 | T__27 | T__28 | T__29 | T__30 | NUMBER | FLOAT | BOOL | ID | WS | STRING )
      alt_7 = 27
      alt_7 = @dfa7.predict( @input )
      case alt_7
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
        # at line 1:60: AND
        and!

      when 12
        # at line 1:64: OR
        or!

      when 13
        # at line 1:67: EQLS
        eqls!

      when 14
        # at line 1:72: QTS
        qts!

      when 15
        # at line 1:76: MAIN
        main!

      when 16
        # at line 1:81: IF
        if!

      when 17
        # at line 1:84: T__26
        t__26!

      when 18
        # at line 1:90: T__27
        t__27!

      when 19
        # at line 1:96: T__28
        t__28!

      when 20
        # at line 1:102: T__29
        t__29!

      when 21
        # at line 1:108: T__30
        t__30!

      when 22
        # at line 1:114: NUMBER
        number!

      when 23
        # at line 1:121: FLOAT
        float!

      when 24
        # at line 1:127: BOOL
        bool!

      when 25
        # at line 1:132: ID
        id!

      when 26
        # at line 1:135: WS
        ws!

      when 27
        # at line 1:138: STRING
        string!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA7 < ANTLR3::DFA
      EOT = unpack( 14, -1, 1, 25, 6, 23, 1, 35, 1, 23, 4, -1, 1, 23, 1, 
                    39, 6, 23, 2, -1, 2, 23, 1, -1, 1, 48, 1, 49, 5, 23, 
                    1, 55, 2, -1, 4, 23, 1, 60, 1, -1, 1, 61, 1, 60, 2, 
                    23, 2, -1, 1, 64, 1, 23, 1, -1, 1, 66, 1, -1 )
      EOF = unpack( 67, -1 )
      MIN = unpack( 1, 9, 13, -1, 1, 0, 1, 97, 1, 102, 2, 97, 1, 116, 1, 
                    111, 1, 46, 1, 114, 4, -1, 1, 105, 1, 48, 1, 116, 1, 
                    114, 1, 111, 1, 108, 1, 114, 1, 111, 2, -1, 1, 117, 
                    1, 110, 1, -1, 2, 48, 1, 97, 1, 115, 1, 105, 1, 108, 
                    1, 101, 1, 48, 2, -1, 1, 116, 1, 101, 1, 110, 1, 101, 
                    1, 48, 1, -1, 2, 48, 1, 103, 1, 97, 2, -1, 1, 48, 1, 
                    110, 1, -1, 1, 48, 1, -1 )
      MAX = unpack( 1, 125, 13, -1, 1, -1, 1, 97, 1, 110, 1, 97, 1, 108, 
                    1, 116, 1, 111, 1, 57, 1, 114, 4, -1, 1, 105, 1, 122, 
                    1, 116, 1, 114, 1, 111, 1, 108, 1, 114, 1, 111, 2, -1, 
                    1, 117, 1, 110, 1, -1, 2, 122, 1, 97, 1, 115, 1, 105, 
                    1, 108, 1, 101, 1, 122, 2, -1, 1, 116, 1, 101, 1, 110, 
                    1, 101, 1, 122, 1, -1, 2, 122, 1, 103, 1, 97, 2, -1, 
                    1, 122, 1, 110, 1, -1, 1, 122, 1, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 9, -1, 1, 
                       25, 1, 26, 1, 14, 1, 27, 8, -1, 1, 22, 1, 23, 2, 
                       -1, 1, 16, 8, -1, 1, 18, 1, 17, 5, -1, 1, 15, 4, 
                       -1, 1, 24, 1, 19, 2, -1, 1, 20, 1, -1, 1, 21 )
      SPECIAL = unpack( 14, -1, 1, 0, 52, -1 )
      TRANSITION = [
        unpack( 2, 24, 2, -1, 1, 24, 18, -1, 1, 24, 1, -1, 1, 14, 3, -1, 
                1, 11, 1, -1, 1, 5, 1, 6, 1, 3, 1, 1, 1, -1, 1, 2, 1, -1, 
                1, 4, 10, 21, 2, -1, 1, 10, 1, 13, 1, 9, 2, -1, 26, 23, 
                4, -1, 1, 23, 1, -1, 1, 23, 1, 20, 3, 23, 1, 18, 2, 23, 
                1, 16, 3, 23, 1, 15, 5, 23, 1, 19, 1, 22, 1, 23, 1, 17, 
                4, 23, 1, 7, 1, 12, 1, 8 ),
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
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 26, 1, -1, 65525, 26 ),
        unpack( 1, 27 ),
        unpack( 1, 28, 7, -1, 1, 29 ),
        unpack( 1, 30 ),
        unpack( 1, 32, 10, -1, 1, 31 ),
        unpack( 1, 33 ),
        unpack( 1, 34 ),
        unpack( 1, 36, 1, -1, 10, 21 ),
        unpack( 1, 37 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 38 ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 1, 40 ),
        unpack( 1, 41 ),
        unpack( 1, 42 ),
        unpack( 1, 43 ),
        unpack( 1, 44 ),
        unpack( 1, 45 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 46 ),
        unpack( 1, 47 ),
        unpack(  ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 1, 50 ),
        unpack( 1, 51 ),
        unpack( 1, 52 ),
        unpack( 1, 53 ),
        unpack( 1, 54 ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 56 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack( 1, 59 ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack(  ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 1, 62 ),
        unpack( 1, 63 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack( 1, 65 ),
        unpack(  ),
        unpack( 10, 23, 7, -1, 26, 23, 4, -1, 1, 23, 1, -1, 26, 23 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 7
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | AND | OR | EQLS | QTS | MAIN | IF | T__26 | T__27 | T__28 | T__29 | T__30 | NUMBER | FLOAT | BOOL | ID | WS | STRING );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa7 = DFA7.new( self, 7 ) do |s|
        case s
        when 0
          look_7_14 = @input.peek
          s = -1
          if ( look_7_14.between?( 0x0, 0x9 ) || look_7_14.between?( 0xb, 0xffff ) )
            s = 26
          else
            s = 25
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa7.description, 7, s, input )
          @dfa7.error( nva )
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end


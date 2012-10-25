#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-10-25 13:17:47
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
                   :EOF => -1, :LSTH => 13, :QTS => 17, :IF => 19, :GRTH => 12, 
                   :WS => 24, :LPAR => 8, :OR => 15, :RKEY => 11, :RPAR => 9, 
                   :PLUS => 4, :DIGIT => 23, :DIV => 7, :STRING => 22 )
    
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
                     "MAIN", "IF", "T__25", "T__26", "T__27", "T__28", "T__29", 
                     "ID", "NUMBER", "WS", "STRING", "DIGIT" ].freeze
    RULE_METHODS = [ :plus!, :minus!, :mult!, :div!, :lpar!, :rpar!, :lkey!, 
                     :rkey!, :grth!, :lsth!, :and!, :or!, :eqls!, :qts!, 
                     :main!, :if!, :t__25!, :t__26!, :t__27!, :t__28!, :t__29!, 
                     :id!, :number!, :ws!, :string!, :digit! ].freeze

    
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

    # lexer rule t__25! (T__25)
    # (in Rapier.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__25
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

    # lexer rule t__26! (T__26)
    # (in Rapier.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__26
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

    # lexer rule t__27! (T__27)
    # (in Rapier.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__27
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

    # lexer rule t__28! (T__28)
    # (in Rapier.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__28
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

    # lexer rule t__29! (T__29)
    # (in Rapier.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__29
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

    # lexer rule id! (ID)
    # (in Rapier.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:11: 'a' .. 'z'
      match_range( 0x61, 0x7a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule number! (NUMBER)
    # (in Rapier.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:11: ( DIGIT )+
      # at file 48:11: ( DIGIT )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 48:12: DIGIT
          digit!

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
      # trace_out( __method__, 23 )

    end

    # lexer rule ws! (WS)
    # (in Rapier.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:11: ( ' ' | '\\t' | '\\r' | '\\n' )
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
      # trace_out( __method__, 24 )

    end

    # lexer rule string! (STRING)
    # (in Rapier.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: QTS (~ '\\n' )* QTS
      qts!
      # at line 50:13: (~ '\\n' )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == 0x22 )
          look_2_1 = @input.peek( 2 )

          if ( look_2_1.between?( 0x0, 0x9 ) || look_2_1.between?( 0xb, 0xffff ) )
            alt_2 = 1

          end
        elsif ( look_2_0.between?( 0x0, 0x9 ) || look_2_0.between?( 0xb, 0x21 ) || look_2_0.between?( 0x23, 0xffff ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 50:14: ~ '\\n'
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 2
        end
      end # loop for decision 2
      qts!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule digit! (DIGIT)
    # (in Rapier.g)
    def digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      
      # - - - - main rule block - - - -
      # at line 51:19: '0' .. '9'
      match_range( 0x30, 0x39 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | AND | OR | EQLS | QTS | MAIN | IF | T__25 | T__26 | T__27 | T__28 | T__29 | ID | NUMBER | WS | STRING )
      alt_3 = 25
      alt_3 = @dfa3.predict( @input )
      case alt_3
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
        # at line 1:84: T__25
        t__25!

      when 18
        # at line 1:90: T__26
        t__26!

      when 19
        # at line 1:96: T__27
        t__27!

      when 20
        # at line 1:102: T__28
        t__28!

      when 21
        # at line 1:108: T__29
        t__29!

      when 22
        # at line 1:114: ID
        id!

      when 23
        # at line 1:117: NUMBER
        number!

      when 24
        # at line 1:124: WS
        ws!

      when 25
        # at line 1:127: STRING
        string!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA3 < ANTLR3::DFA
      EOT = unpack( 14, -1, 1, 24, 6, 21, 12, -1 )
      EOF = unpack( 33, -1 )
      MIN = unpack( 1, 9, 13, -1, 1, 0, 1, 97, 1, 102, 1, 97, 1, 108, 1, 
                    116, 1, 111, 12, -1 )
      MAX = unpack( 1, 125, 13, -1, 1, -1, 1, 97, 1, 110, 1, 97, 1, 108, 
                    1, 116, 1, 111, 12, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 7, -1, 1, 
                       22, 1, 23, 1, 24, 1, 14, 1, 25, 1, 15, 1, 16, 1, 
                       18, 1, 17, 1, 19, 1, 20, 1, 21 )
      SPECIAL = unpack( 14, -1, 1, 0, 18, -1 )
      TRANSITION = [
        unpack( 2, 23, 2, -1, 1, 23, 18, -1, 1, 23, 1, -1, 1, 14, 3, -1, 
                1, 11, 1, -1, 1, 5, 1, 6, 1, 3, 1, 1, 1, -1, 1, 2, 1, -1, 
                1, 4, 10, 22, 2, -1, 1, 10, 1, 13, 1, 9, 34, -1, 1, 21, 
                1, 20, 3, 21, 1, 18, 2, 21, 1, 16, 3, 21, 1, 15, 5, 21, 
                1, 19, 2, 21, 1, 17, 4, 21, 1, 7, 1, 12, 1, 8 ),
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
        unpack( 10, 25, 1, -1, 65525, 25 ),
        unpack( 1, 26 ),
        unpack( 1, 27, 7, -1, 1, 28 ),
        unpack( 1, 29 ),
        unpack( 1, 30 ),
        unpack( 1, 31 ),
        unpack( 1, 32 ),
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
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 3
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( PLUS | MINUS | MULT | DIV | LPAR | RPAR | LKEY | RKEY | GRTH | LSTH | AND | OR | EQLS | QTS | MAIN | IF | T__25 | T__26 | T__27 | T__28 | T__29 | ID | NUMBER | WS | STRING );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa3 = DFA3.new( self, 3 ) do |s|
        case s
        when 0
          look_3_14 = @input.peek
          s = -1
          if ( look_3_14.between?( 0x0, 0x9 ) || look_3_14.between?( 0xb, 0xffff ) )
            s = 25
          else
            s = 24
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa3.description, 3, s, input )
          @dfa3.error( nva )
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end


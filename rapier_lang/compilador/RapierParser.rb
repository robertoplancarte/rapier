#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-18 16:48:42
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
    define_tokens( :WHILE => 23, :LETTER => 32, :FLOAT => 28, :AND => 16, 
                   :ID => 26, :SPACE => 36, :EOF => -1, :IF => 21, :IN => 25, 
                   :LPAR => 8, :RKEY => 11, :PLUS => 4, :DIGIT => 33, :T__42 => 42, 
                   :INTEGER => 31, :T__43 => 43, :EQLS => 18, :T__40 => 40, 
                   :T__41 => 41, :T__46 => 46, :T__44 => 44, :T__45 => 45, 
                   :SYMBOL => 35, :ELSE => 22, :LSTHE => 15, :NUMBER => 27, 
                   :BOOL => 29, :LKEY => 10, :MULT => 6, :MINUS => 5, :GRTHE => 14, 
                   :LSTH => 13, :QTS => 19, :GRTH => 12, :WS => 39, :NONCONTROL_CHAR => 34, 
                   :OUT => 24, :OR => 17, :RPAR => 9, :PROGRAM => 20, :LOWER => 37, 
                   :DIV => 7, :UPPER => 38, :STRING => 30 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "AND", "OR", 
                    "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "WHILE", "OUT", 
                    "IN", "ID", "NUMBER", "FLOAT", "BOOL", "STRING", "INTEGER", 
                    "LETTER", "DIGIT", "NONCONTROL_CHAR", "SYMBOL", "SPACE", 
                    "LOWER", "UPPER", "WS", "':'", "';'", "'var'", "'int'", 
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
        @counter = 0
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
    # 21:1: prog : PROGRAM LKEY ( fun )* RKEY ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 21:11: PROGRAM LKEY ( fun )* RKEY
        match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_prog_135 )
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_prog_137 )
        # at line 21:24: ( fun )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( T__43, T__46 ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 21:24: fun
            @state.following.push( TOKENS_FOLLOWING_fun_IN_prog_139 )
            fun
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_prog_142 )
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
    # 22:1: fun : b= type ':' a= ID LPAR RPAR bloq ;
    # 
    def fun
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      a = nil
      b = nil

      begin
        # at line 22:11: b= type ':' a= ID LPAR RPAR bloq
        @state.following.push( TOKENS_FOLLOWING_type_IN_fun_159 )
        b = type
        @state.following.pop
        match( T__40, TOKENS_FOLLOWING_T__40_IN_fun_161 )
        a = match( ID, TOKENS_FOLLOWING_ID_IN_fun_165 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_fun_167 )
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_fun_169 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_fun_171 )
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
    # 23:1: bloq : LKEY ( ( est ( ';' | ')' ) )* | sIf | sWhile ) RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 23:11: LKEY ( ( est ( ';' | ')' ) )* | sIf | sWhile ) RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_182 )
        # at line 23:16: ( ( est ( ';' | ')' ) )* | sIf | sWhile )
        alt_3 = 3
        case look_3 = @input.peek( 1 )
        when MINUS, LPAR, RKEY, OUT, IN, ID, NUMBER, FLOAT, BOOL, STRING, T__42 then alt_3 = 1
        when IF then alt_3 = 2
        when WHILE then alt_3 = 3
        else
          raise NoViableAlternative( "", 3, 0 )
        end
        case alt_3
        when 1
          # at line 23:17: ( est ( ';' | ')' ) )*
          # at line 23:17: ( est ( ';' | ')' ) )*
          while true # decision 2
            alt_2 = 2
            look_2_0 = @input.peek( 1 )

            if ( look_2_0 == MINUS || look_2_0 == LPAR || look_2_0.between?( OUT, STRING ) || look_2_0 == T__42 )
              alt_2 = 1

            end
            case alt_2
            when 1
              # at line 23:18: est ( ';' | ')' )
              @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_186 )
              est
              @state.following.pop
              if @input.peek(1) == RPAR || @input.peek(1) == T__41
                @input.consume
                @state.error_recovery = false
              else
                mse = MismatchedSet( nil )
                raise mse
              end



            else
              break # out of loop for decision 2
            end
          end # loop for decision 2

        when 2
          # at line 23:35: sIf
          @state.following.push( TOKENS_FOLLOWING_sIf_IN_bloq_197 )
          sIf
          @state.following.pop

        when 3
          # at line 23:41: sWhile
          @state.following.push( TOKENS_FOLLOWING_sWhile_IN_bloq_201 )
          sWhile
          @state.following.pop

        end
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_204 )

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
    # 24:1: est : ( dclr | asign | comp | prt | red ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 24:11: ( dclr | asign | comp | prt | red )
        # at line 24:11: ( dclr | asign | comp | prt | red )
        alt_4 = 5
        case look_4 = @input.peek( 1 )
        when T__42 then alt_4 = 1
        when ID then look_4_2 = @input.peek( 2 )

        if ( look_4_2 == EQLS )
          alt_4 = 2
        elsif ( look_4_2.between?( PLUS, DIV ) || look_4_2 == RPAR || look_4_2.between?( GRTH, LSTHE ) || look_4_2 == T__41 )
          alt_4 = 3
        else
          raise NoViableAlternative( "", 4, 2 )
        end
        when MINUS, LPAR, NUMBER, FLOAT, BOOL, STRING then alt_4 = 3
        when OUT then alt_4 = 4
        when IN then alt_4 = 5
        else
          raise NoViableAlternative( "", 4, 0 )
        end
        case alt_4
        when 1
          # at line 24:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_217 )
          dclr
          @state.following.pop

        when 2
          # at line 24:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_221 )
          asign
          @state.following.pop

        when 3
          # at line 24:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_225 )
          comp
          @state.following.pop

        when 4
          # at line 24:34: prt
          @state.following.push( TOKENS_FOLLOWING_prt_IN_est_229 )
          prt
          @state.following.pop

        when 5
          # at line 24:40: red
          @state.following.push( TOKENS_FOLLOWING_red_IN_est_233 )
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
    # 25:1: prt : OUT LPAR ( comp )? RPAR ;
    # 
    def prt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 25:11: OUT LPAR ( comp )? RPAR
        match( OUT, TOKENS_FOLLOWING_OUT_IN_prt_245 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_prt_247 )
        # at line 25:20: ( comp )?
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == MINUS || look_5_0 == LPAR || look_5_0.between?( ID, STRING ) )
          alt_5 = 1
        end
        case alt_5
        when 1
          # at line 25:20: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_prt_249 )
          comp
          @state.following.pop

        end
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_prt_252 )
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
    # 26:1: red : IN LPAR comp RPAR ;
    # 
    def red
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      begin
        # at line 26:11: IN LPAR comp RPAR
        match( IN, TOKENS_FOLLOWING_IN_IN_red_266 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_red_268 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_red_270 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_red_272 )
        # --> action
        agc_3('in')
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
    # 27:1: sIf : IF LPAR comp RPAR bloq ( ELSE bloq )? ;
    # 
    def sIf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 27:11: IF LPAR comp RPAR bloq ( ELSE bloq )?
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_286 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_288 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_290 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_292 )
        # --> action
        agc_4('if')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_296 )
        bloq
        @state.following.pop
        # --> action
        agc_5('if')
        # <-- action
        # --> action
        agc_4('else')
        # <-- action
        # at line 27:78: ( ELSE bloq )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ELSE )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 27:79: ELSE bloq
          match( ELSE, TOKENS_FOLLOWING_ELSE_IN_sIf_303 )
          @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_305 )
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
    # 28:1: sWhile : WHILE LPAR ( comp )? RPAR bloq ;
    # 
    def sWhile
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 28:11: WHILE LPAR ( comp )? RPAR bloq
        match( WHILE, TOKENS_FOLLOWING_WHILE_IN_sWhile_318 )
        # --> action
        agc_4()
        # <-- action
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sWhile_322 )
        # at line 28:32: ( comp )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == MINUS || look_7_0 == LPAR || look_7_0.between?( ID, STRING ) )
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 28:32: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_sWhile_324 )
          comp
          @state.following.pop

        end
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sWhile_327 )
        # --> action
        agc_4('while')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sWhile_331 )
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
    # 29:1: dclr : 'var' b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      a = nil
      b = nil

      begin
        # at line 29:11: 'var' b= type a= ID ( '=' comp )?
        match( T__42, TOKENS_FOLLOWING_T__42_IN_dclr_344 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_348 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_352 )
        # --> action
        agc_1(a,b,true)
        # <-- action
        # at line 29:47: ( '=' comp )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == EQLS )
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 29:48: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_357 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_362 )
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
    # 30:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      a = nil

      begin
        # at line 30:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_378 )
        # --> action
        agc_1(a)
        # <-- action
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_382 )
        # --> action
        agc_2('=')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_386 )
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
    # 31:1: comp : ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      begin
        # at line 31:11: ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )*
        # at line 31:11: ( expr )
        # at line 31:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_400 )
        expr
        @state.following.pop
        # --> action
        agc_3(['<','>','>=','<='])
        # <-- action

        # at line 31:48: ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0.between?( GRTH, LSTHE ) )
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 31:49: ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr )
            # at line 31:49: ( ( LSTHE | GRTHE | LSTH | GRTH ) )
            # at line 31:50: ( LSTHE | GRTHE | LSTH | GRTH )
            # at line 31:50: ( LSTHE | GRTHE | LSTH | GRTH )
            alt_9 = 4
            case look_9 = @input.peek( 1 )
            when LSTHE then alt_9 = 1
            when GRTHE then alt_9 = 2
            when LSTH then alt_9 = 3
            when GRTH then alt_9 = 4
            else
              raise NoViableAlternative( "", 9, 0 )
            end
            case alt_9
            when 1
              # at line 31:52: LSTHE
              match( LSTHE, TOKENS_FOLLOWING_LSTHE_IN_comp_410 )
              # --> action
              agc_2('<=')
              # <-- action

            when 2
              # at line 31:74: GRTHE
              match( GRTHE, TOKENS_FOLLOWING_GRTHE_IN_comp_416 )
              # --> action
              agc_2('>=')
              # <-- action

            when 3
              # at line 31:96: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_422 )
              # --> action
              agc_2('<')
              # <-- action

            when 4
              # at line 31:115: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_427 )
              # --> action
              agc_2('>')
              # <-- action

            end

            # at line 31:135: ( expr )
            # at line 31:136: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_434 )
            expr
            @state.following.pop
            # --> action
            agc_3(['<','>','>=','<='])
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
    # 32:1: expr : term ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      begin
        # at line 32:11: term ( ( ( PLUS | MINUS ) ) ( term ) )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_451 )
        term
        @state.following.pop
        # at line 32:16: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0.between?( PLUS, MINUS ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 32:17: ( ( PLUS | MINUS ) ) ( term )
            # at line 32:17: ( ( PLUS | MINUS ) )
            # at line 32:18: ( PLUS | MINUS )
            # at line 32:18: ( PLUS | MINUS )
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
              # at line 32:20: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_457 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 32:57: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_463 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 32:95: ( term )
            # at line 32:96: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_470 )
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
    # 33:1: term : factor ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 33:11: factor ( ( ( MULT | DIV ) ) ( factor ) )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_488 )
        factor
        @state.following.pop
        # at line 33:17: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( MULT, DIV ) )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 33:18: ( ( MULT | DIV ) ) ( factor )
            # at line 33:18: ( ( MULT | DIV ) )
            # at line 33:19: ( MULT | DIV )
            # at line 33:19: ( MULT | DIV )
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
              # at line 33:21: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_493 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 33:58: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_499 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 33:94: ( factor )
            # at line 33:95: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_506 )
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
    # 34:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 34:9: ( elem | LPAR expr RPAR )
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
          # at line 34:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_520 )
          elem
          @state.following.pop

        when 2
          # at line 34:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_524 )
          # --> action
          agc_2('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_528 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_530 )
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
    # 35:1: elem : ( '-' )? (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) ;
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      a = nil

      begin
        # at line 35:10: ( '-' )? (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
        # at line 35:10: ( '-' )?
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == MINUS )
          alt_16 = 1
        end
        case alt_16
        when 1
          # at line 35:11: '-'
          match( MINUS, TOKENS_FOLLOWING_MINUS_IN_elem_543 )
          # --> action
          agc_1('-1','int')
          # <-- action
          # --> action
          agc_2('*')
          # <-- action

        end
        # at line 35:50: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
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
          # at line 35:52: a= NUMBER
          a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_555 )
          # --> action
          agc_1(a, 'int')
          # <-- action

        when 2
          # at line 35:80: a= FLOAT
          a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_562 )
          # --> action
          agc_1(a, 'float')
          # <-- action

        when 3
          # at line 35:109: a= BOOL
          a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_569 )
          # --> action
          agc_1(a, 'boolean')
          # <-- action

        when 4
          # at line 35:139: a= STRING
          a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_576 )
          # --> action
          agc_1(a, 'string')
          # <-- action

        when 5
          # at line 35:170: a= ID
          a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_583 )
          # --> action
          agc_1(a)
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
    # 36:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      t = nil

      begin
        # at line 36:25: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_18 = 4
        case look_18 = @input.peek( 1 )
        when T__43 then alt_18 = 1
        when T__44 then alt_18 = 2
        when T__45 then alt_18 = 3
        when T__46 then alt_18 = 4
        else
          raise NoViableAlternative( "", 18, 0 )
        end
        case alt_18
        when 1
          # at line 36:27: 'int'
          match( T__43, TOKENS_FOLLOWING_T__43_IN_type_598 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 36:46: 'float'
          match( T__44, TOKENS_FOLLOWING_T__44_IN_type_604 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 36:69: 'string'
          match( T__45, TOKENS_FOLLOWING_T__45_IN_type_610 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 36:94: 'boolean'
          match( T__46, TOKENS_FOLLOWING_T__46_IN_type_616 )
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



    TOKENS_FOLLOWING_PROGRAM_IN_prog_135 = Set[ 10 ]
    TOKENS_FOLLOWING_LKEY_IN_prog_137 = Set[ 11, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_fun_IN_prog_139 = Set[ 11, 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_RKEY_IN_prog_142 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_fun_159 = Set[ 40 ]
    TOKENS_FOLLOWING_T__40_IN_fun_161 = Set[ 26 ]
    TOKENS_FOLLOWING_ID_IN_fun_165 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_fun_167 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_fun_169 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_fun_171 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_182 = Set[ 5, 8, 11, 21, 23, 24, 25, 26, 27, 28, 29, 30, 42 ]
    TOKENS_FOLLOWING_est_IN_bloq_186 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_set_IN_bloq_188 = Set[ 5, 8, 11, 24, 25, 26, 27, 28, 29, 30, 42 ]
    TOKENS_FOLLOWING_sIf_IN_bloq_197 = Set[ 11 ]
    TOKENS_FOLLOWING_sWhile_IN_bloq_201 = Set[ 11 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_204 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_217 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_221 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_225 = Set[ 1 ]
    TOKENS_FOLLOWING_prt_IN_est_229 = Set[ 1 ]
    TOKENS_FOLLOWING_red_IN_est_233 = Set[ 1 ]
    TOKENS_FOLLOWING_OUT_IN_prt_245 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_prt_247 = Set[ 5, 8, 9, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_prt_249 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_prt_252 = Set[ 1 ]
    TOKENS_FOLLOWING_IN_IN_red_266 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_red_268 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_red_270 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_red_272 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_286 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_288 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_sIf_290 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_292 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_296 = Set[ 1, 22 ]
    TOKENS_FOLLOWING_ELSE_IN_sIf_303 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_305 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_sWhile_318 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sWhile_322 = Set[ 5, 8, 9, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_sWhile_324 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sWhile_327 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sWhile_331 = Set[ 1 ]
    TOKENS_FOLLOWING_T__42_IN_dclr_344 = Set[ 43, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_dclr_348 = Set[ 26 ]
    TOKENS_FOLLOWING_ID_IN_dclr_352 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_357 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_dclr_362 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_378 = Set[ 18 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_382 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_comp_IN_asign_386 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_400 = Set[ 1, 12, 13, 14, 15 ]
    TOKENS_FOLLOWING_LSTHE_IN_comp_410 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_GRTHE_IN_comp_416 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_422 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_427 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_expr_IN_comp_434 = Set[ 1, 12, 13, 14, 15 ]
    TOKENS_FOLLOWING_term_IN_expr_451 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_457 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_463 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_term_IN_expr_470 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_488 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_493 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_DIV_IN_term_499 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_factor_IN_term_506 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_520 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_524 = Set[ 5, 8, 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_expr_IN_factor_528 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_530 = Set[ 1 ]
    TOKENS_FOLLOWING_MINUS_IN_elem_543 = Set[ 26, 27, 28, 29, 30 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_555 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_562 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_569 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_576 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_583 = Set[ 1 ]
    TOKENS_FOLLOWING_T__43_IN_type_598 = Set[ 1 ]
    TOKENS_FOLLOWING_T__44_IN_type_604 = Set[ 1 ]
    TOKENS_FOLLOWING_T__45_IN_type_610 = Set[ 1 ]
    TOKENS_FOLLOWING_T__46_IN_type_616 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-05 06:37:41
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
    define_tokens( :INTEGER => 30, :T__42 => 42, :EQLS => 18, :T__43 => 43, 
                   :T__40 => 40, :T__41 => 41, :T__44 => 44, :SYMBOL => 34, 
                   :LETTER => 31, :ELSE => 22, :BOOL => 28, :NUMBER => 26, 
                   :LSTHE => 15, :FLOAT => 27, :MINUS => 5, :MULT => 6, 
                   :LKEY => 10, :ID => 25, :AND => 16, :SPACE => 35, :EOF => -1, 
                   :GRTHE => 14, :LSTH => 13, :IF => 21, :QTS => 19, :GRTH => 12, 
                   :WS => 38, :IN => 24, :LPAR => 8, :NONCONTROL_CHAR => 33, 
                   :OUT => 23, :T__39 => 39, :OR => 17, :RKEY => 11, :PROGRAM => 20, 
                   :PLUS => 4, :RPAR => 9, :LOWER => 36, :DIGIT => 32, :DIV => 7, 
                   :UPPER => 37, :STRING => 29 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "AND", "OR", 
                    "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "OUT", "IN", 
                    "ID", "NUMBER", "FLOAT", "BOOL", "STRING", "INTEGER", 
                    "LETTER", "DIGIT", "NONCONTROL_CHAR", "SYMBOL", "SPACE", 
                    "LOWER", "UPPER", "WS", "':'", "'var'", "'int'", "'float'", 
                    "'string'", "'boolean'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :prog, :fun, :bloq, :est, :prt, :red, :sIf, :dclr, 
                     :asign, :comp, :expr, :term, :factor, :elem, :type ].freeze


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
        match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_prog_131 )
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_prog_133 )
        # at line 21:24: ( fun )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( T__41, T__44 ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 21:24: fun
            @state.following.push( TOKENS_FOLLOWING_fun_IN_prog_135 )
            fun
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_prog_138 )
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
        @state.following.push( TOKENS_FOLLOWING_type_IN_fun_155 )
        b = type
        @state.following.pop
        match( T__39, TOKENS_FOLLOWING_T__39_IN_fun_157 )
        a = match( ID, TOKENS_FOLLOWING_ID_IN_fun_161 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_fun_163 )
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_fun_165 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_fun_167 )
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
    # 23:1: bloq : LKEY ( est )* RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 23:11: LKEY ( est )* RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_178 )
        # at line 23:16: ( est )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == LPAR || look_2_0 == IF || look_2_0.between?( OUT, STRING ) || look_2_0 == T__40 )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 23:16: est
            @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_180 )
            est
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_183 )

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
    # 24:1: est : ( dclr | asign | comp | sIf | prt | red ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 24:11: ( dclr | asign | comp | sIf | prt | red )
        # at line 24:11: ( dclr | asign | comp | sIf | prt | red )
        alt_3 = 6
        case look_3 = @input.peek( 1 )
        when T__40 then alt_3 = 1
        when ID then look_3_2 = @input.peek( 2 )

        if ( look_3_2 == EQLS )
          alt_3 = 2
        elsif ( look_3_2.between?( PLUS, LPAR ) || look_3_2.between?( RKEY, LSTHE ) || look_3_2 == IF || look_3_2.between?( OUT, STRING ) || look_3_2 == T__40 )
          alt_3 = 3
        else
          raise NoViableAlternative( "", 3, 2 )
        end
        when LPAR, NUMBER, FLOAT, BOOL, STRING then alt_3 = 3
        when IF then alt_3 = 4
        when OUT then alt_3 = 5
        when IN then alt_3 = 6
        else
          raise NoViableAlternative( "", 3, 0 )
        end
        case alt_3
        when 1
          # at line 24:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_196 )
          dclr
          @state.following.pop

        when 2
          # at line 24:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_200 )
          asign
          @state.following.pop

        when 3
          # at line 24:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_204 )
          comp
          @state.following.pop

        when 4
          # at line 24:34: sIf
          @state.following.push( TOKENS_FOLLOWING_sIf_IN_est_208 )
          sIf
          @state.following.pop

        when 5
          # at line 24:40: prt
          @state.following.push( TOKENS_FOLLOWING_prt_IN_est_212 )
          prt
          @state.following.pop

        when 6
          # at line 24:46: red
          @state.following.push( TOKENS_FOLLOWING_red_IN_est_216 )
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
    # 25:1: prt : OUT LPAR comp RPAR ;
    # 
    def prt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 25:11: OUT LPAR comp RPAR
        match( OUT, TOKENS_FOLLOWING_OUT_IN_prt_229 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_prt_231 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_prt_233 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_prt_235 )
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
        match( IN, TOKENS_FOLLOWING_IN_IN_red_249 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_red_251 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_red_253 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_red_255 )
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
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_269 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_271 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_273 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_275 )
        # --> action
        agc_4('if')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_279 )
        bloq
        @state.following.pop
        # --> action
        agc_5('if')
        # <-- action
        # --> action
        agc_4('else')
        # <-- action
        # at line 27:78: ( ELSE bloq )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == ELSE )
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 27:79: ELSE bloq
          match( ELSE, TOKENS_FOLLOWING_ELSE_IN_sIf_286 )
          @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_288 )
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
    # parser rule dclr
    # 
    # (in Rapier.g)
    # 28:1: dclr : 'var' b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      a = nil
      b = nil

      begin
        # at line 28:11: 'var' b= type a= ID ( '=' comp )?
        match( T__40, TOKENS_FOLLOWING_T__40_IN_dclr_303 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_307 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_311 )
        # --> action
        agc_1(a,b,true)
        # <-- action
        # at line 28:47: ( '=' comp )?
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == EQLS )
          alt_5 = 1
        end
        case alt_5
        when 1
          # at line 28:48: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_316 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_321 )
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
        # trace_out( __method__, 8 )

      end
      
      return 
    end


    # 
    # parser rule asign
    # 
    # (in Rapier.g)
    # 29:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      a = nil

      begin
        # at line 29:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_337 )
        # --> action
        agc_1(a)
        # <-- action
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_341 )
        # --> action
        agc_2('=')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_345 )
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
        # trace_out( __method__, 9 )

      end
      
      return 
    end


    # 
    # parser rule comp
    # 
    # (in Rapier.g)
    # 30:1: comp : ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      begin
        # at line 30:11: ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )*
        # at line 30:11: ( expr )
        # at line 30:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_359 )
        expr
        @state.following.pop
        # --> action
        agc_3(['<','>','>=','<='])
        # <-- action

        # at line 30:48: ( ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr ) )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0.between?( GRTH, LSTHE ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 30:49: ( ( LSTHE | GRTHE | LSTH | GRTH ) ) ( expr )
            # at line 30:49: ( ( LSTHE | GRTHE | LSTH | GRTH ) )
            # at line 30:50: ( LSTHE | GRTHE | LSTH | GRTH )
            # at line 30:50: ( LSTHE | GRTHE | LSTH | GRTH )
            alt_6 = 4
            case look_6 = @input.peek( 1 )
            when LSTHE then alt_6 = 1
            when GRTHE then alt_6 = 2
            when LSTH then alt_6 = 3
            when GRTH then alt_6 = 4
            else
              raise NoViableAlternative( "", 6, 0 )
            end
            case alt_6
            when 1
              # at line 30:52: LSTHE
              match( LSTHE, TOKENS_FOLLOWING_LSTHE_IN_comp_369 )
              # --> action
              agc_2('<=')
              # <-- action

            when 2
              # at line 30:74: GRTHE
              match( GRTHE, TOKENS_FOLLOWING_GRTHE_IN_comp_375 )
              # --> action
              agc_2('<=')
              # <-- action

            when 3
              # at line 30:96: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_381 )
              # --> action
              agc_2('<')
              # <-- action

            when 4
              # at line 30:115: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_386 )
              # --> action
              agc_2('>')
              # <-- action

            end

            # at line 30:135: ( expr )
            # at line 30:136: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_393 )
            expr
            @state.following.pop
            # --> action
            agc_3(['<','>','>=','<='])
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
        # trace_out( __method__, 10 )

      end
      
      return 
    end


    # 
    # parser rule expr
    # 
    # (in Rapier.g)
    # 31:1: expr : ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      begin
        # at line 31:11: ( term ) ( ( ( PLUS | MINUS ) ) ( term ) )*
        # at line 31:11: ( term )
        # at line 31:12: term
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_412 )
        term
        @state.following.pop
        # --> action
        agc_3(['+','-'])
        # <-- action

        # at line 31:38: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( PLUS, MINUS ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 31:39: ( ( PLUS | MINUS ) ) ( term )
            # at line 31:39: ( ( PLUS | MINUS ) )
            # at line 31:40: ( PLUS | MINUS )
            # at line 31:40: ( PLUS | MINUS )
            alt_8 = 2
            look_8_0 = @input.peek( 1 )

            if ( look_8_0 == PLUS )
              alt_8 = 1
            elsif ( look_8_0 == MINUS )
              alt_8 = 2
            else
              raise NoViableAlternative( "", 8, 0 )
            end
            case alt_8
            when 1
              # at line 31:42: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_422 )
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 31:61: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_427 )
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 31:81: ( term )
            # at line 31:82: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_433 )
            term
            @state.following.pop
            # --> action
            agc_3(['+','-'])
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
        # trace_out( __method__, 11 )

      end
      
      return 
    end


    # 
    # parser rule term
    # 
    # (in Rapier.g)
    # 32:1: term : ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      begin
        # at line 32:11: ( factor ) ( ( ( MULT | DIV ) ) ( factor ) )*
        # at line 32:11: ( factor )
        # at line 32:12: factor
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_452 )
        factor
        @state.following.pop
        # --> action
        agc_3(['*','/'])
        # <-- action

        # at line 32:38: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0.between?( MULT, DIV ) )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 32:39: ( ( MULT | DIV ) ) ( factor )
            # at line 32:39: ( ( MULT | DIV ) )
            # at line 32:40: ( MULT | DIV )
            # at line 32:40: ( MULT | DIV )
            alt_10 = 2
            look_10_0 = @input.peek( 1 )

            if ( look_10_0 == MULT )
              alt_10 = 1
            elsif ( look_10_0 == DIV )
              alt_10 = 2
            else
              raise NoViableAlternative( "", 10, 0 )
            end
            case alt_10
            when 1
              # at line 32:42: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_460 )
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 32:61: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_465 )
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 32:81: ( factor )
            # at line 32:82: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_473 )
            factor
            @state.following.pop
            # --> action
            agc_3(['*','/'])
            # <-- action


          else
            break # out of loop for decision 11
          end
        end # loop for decision 11

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
    # parser rule factor
    # 
    # (in Rapier.g)
    # 33:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 33:9: ( elem | LPAR expr RPAR )
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0.between?( ID, STRING ) )
          alt_12 = 1
        elsif ( look_12_0 == LPAR )
          alt_12 = 2
        else
          raise NoViableAlternative( "", 12, 0 )
        end
        case alt_12
        when 1
          # at line 33:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_487 )
          elem
          @state.following.pop

        when 2
          # at line 33:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_491 )
          # --> action
          agc_2('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_495 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_497 )
          # --> action
          agc_3
          # <-- action

        end
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
    # parser rule elem
    # 
    # (in Rapier.g)
    # 34:1: elem : (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      a = nil

      begin
        # at line 34:9: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
        alt_13 = 5
        case look_13 = @input.peek( 1 )
        when NUMBER then alt_13 = 1
        when FLOAT then alt_13 = 2
        when BOOL then alt_13 = 3
        when STRING then alt_13 = 4
        when ID then alt_13 = 5
        else
          raise NoViableAlternative( "", 13, 0 )
        end
        case alt_13
        when 1
          # at line 34:11: a= NUMBER
          a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_512 )
          # --> action
          agc_1(a, 'int')
          # <-- action

        when 2
          # at line 34:39: a= FLOAT
          a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_519 )
          # --> action
          agc_1(a, 'float')
          # <-- action

        when 3
          # at line 34:68: a= BOOL
          a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_526 )
          # --> action
          agc_1(a, 'boolean')
          # <-- action

        when 4
          # at line 34:98: a= STRING
          a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_533 )
          # --> action
          agc_1(a, 'string')
          # <-- action

        when 5
          # at line 34:129: a= ID
          a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_540 )
          # --> action
          agc_1(a)
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
    # parser rule type
    # 
    # (in Rapier.g)
    # 35:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      t = nil

      begin
        # at line 35:25: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_14 = 4
        case look_14 = @input.peek( 1 )
        when T__41 then alt_14 = 1
        when T__42 then alt_14 = 2
        when T__43 then alt_14 = 3
        when T__44 then alt_14 = 4
        else
          raise NoViableAlternative( "", 14, 0 )
        end
        case alt_14
        when 1
          # at line 35:27: 'int'
          match( T__41, TOKENS_FOLLOWING_T__41_IN_type_554 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 35:46: 'float'
          match( T__42, TOKENS_FOLLOWING_T__42_IN_type_560 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 35:69: 'string'
          match( T__43, TOKENS_FOLLOWING_T__43_IN_type_566 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 35:94: 'boolean'
          match( T__44, TOKENS_FOLLOWING_T__44_IN_type_572 )
          # --> action
          t='boolean'
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return t
    end



    TOKENS_FOLLOWING_PROGRAM_IN_prog_131 = Set[ 10 ]
    TOKENS_FOLLOWING_LKEY_IN_prog_133 = Set[ 11, 41, 42, 43, 44 ]
    TOKENS_FOLLOWING_fun_IN_prog_135 = Set[ 11, 41, 42, 43, 44 ]
    TOKENS_FOLLOWING_RKEY_IN_prog_138 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_fun_155 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_fun_157 = Set[ 25 ]
    TOKENS_FOLLOWING_ID_IN_fun_161 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_fun_163 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_fun_165 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_fun_167 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_178 = Set[ 8, 11, 21, 23, 24, 25, 26, 27, 28, 29, 40 ]
    TOKENS_FOLLOWING_est_IN_bloq_180 = Set[ 8, 11, 21, 23, 24, 25, 26, 27, 28, 29, 40 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_183 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_196 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_200 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_204 = Set[ 1 ]
    TOKENS_FOLLOWING_sIf_IN_est_208 = Set[ 1 ]
    TOKENS_FOLLOWING_prt_IN_est_212 = Set[ 1 ]
    TOKENS_FOLLOWING_red_IN_est_216 = Set[ 1 ]
    TOKENS_FOLLOWING_OUT_IN_prt_229 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_prt_231 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_comp_IN_prt_233 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_prt_235 = Set[ 1 ]
    TOKENS_FOLLOWING_IN_IN_red_249 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_red_251 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_comp_IN_red_253 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_red_255 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_269 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_271 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_comp_IN_sIf_273 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_275 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_279 = Set[ 1, 22 ]
    TOKENS_FOLLOWING_ELSE_IN_sIf_286 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_288 = Set[ 1 ]
    TOKENS_FOLLOWING_T__40_IN_dclr_303 = Set[ 41, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_dclr_307 = Set[ 25 ]
    TOKENS_FOLLOWING_ID_IN_dclr_311 = Set[ 1, 18 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_316 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_comp_IN_dclr_321 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_337 = Set[ 18 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_341 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_comp_IN_asign_345 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_359 = Set[ 1, 12, 13, 14, 15 ]
    TOKENS_FOLLOWING_LSTHE_IN_comp_369 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_GRTHE_IN_comp_375 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_381 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_386 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_expr_IN_comp_393 = Set[ 1, 12, 13, 14, 15 ]
    TOKENS_FOLLOWING_term_IN_expr_412 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_422 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_427 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_term_IN_expr_433 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_452 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_460 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_DIV_IN_term_465 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_factor_IN_term_473 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_487 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_491 = Set[ 8, 25, 26, 27, 28, 29 ]
    TOKENS_FOLLOWING_expr_IN_factor_495 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_497 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_512 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_519 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_526 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_533 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_540 = Set[ 1 ]
    TOKENS_FOLLOWING_T__41_IN_type_554 = Set[ 1 ]
    TOKENS_FOLLOWING_T__42_IN_type_560 = Set[ 1 ]
    TOKENS_FOLLOWING_T__43_IN_type_566 = Set[ 1 ]
    TOKENS_FOLLOWING_T__44_IN_type_572 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


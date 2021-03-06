#!/usr/bin/env ruby
#
# Rapier.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Rapier.g
# Generated at: 2012-11-21 02:09:50
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
    define_tokens( :WHILE => 24, :LETTER => 34, :FLOAT => 30, :AND => 17, 
                   :ID => 28, :SPACE => 38, :EOF => -1, :IF => 22, :IN => 27, 
                   :LPAR => 8, :RKEY => 11, :PLUS => 4, :DIGIT => 35, :T__42 => 42, 
                   :INTEGER => 33, :T__43 => 43, :EQLS => 19, :T__46 => 46, 
                   :T__47 => 47, :T__44 => 44, :SYMBOL => 37, :T__45 => 45, 
                   :ELSE => 23, :LSTHE => 15, :NUMBER => 29, :BOOL => 31, 
                   :LKEY => 10, :MULT => 6, :MINUS => 5, :EXEQ => 16, :GRTHE => 14, 
                   :LSTH => 13, :QTS => 20, :OUTS => 26, :GRTH => 12, :WS => 41, 
                   :NONCONTROL_CHAR => 36, :OUT => 25, :OR => 18, :RPAR => 9, 
                   :PROGRAM => 21, :LOWER => 39, :DIV => 7, :UPPER => 40, 
                   :STRING => 32 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PLUS", "MINUS", "MULT", "DIV", "LPAR", "RPAR", "LKEY", 
                    "RKEY", "GRTH", "LSTH", "GRTHE", "LSTHE", "EXEQ", "AND", 
                    "OR", "EQLS", "QTS", "PROGRAM", "IF", "ELSE", "WHILE", 
                    "OUT", "OUTS", "IN", "ID", "NUMBER", "FLOAT", "BOOL", 
                    "STRING", "INTEGER", "LETTER", "DIGIT", "NONCONTROL_CHAR", 
                    "SYMBOL", "SPACE", "LOWER", "UPPER", "WS", "';'", "':'", 
                    "'int'", "'float'", "'string'", "'boolean'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Rapier

    RULE_METHODS = [ :prog, :fun, :bloq, :est, :prt, :red, :sIf, :sWhile, 
                     :dclrG, :dclr, :asign, :comp, :expr, :term, :factor, 
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
        @tab_var = {}
        @tab_con = []
        @c_g = 0 #globales
        @c_c = 0 #constantes
        @c_l = 0 #locales
        @c_t = 0 #temporales
        @cubo= {'+'=>{'int'=>{'int'=> 'int','float'=>'float','string'=>'string'},'float'=>{'int'=> 'float','float'=>'float'},
                      'string'=>{'string'=> 'string', 'int' => 'string', 'float'=>'string', 'boolean'=>'string'}},
               '-'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
               '*'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
               '/'=>{'int'=>{'int'=> 'float','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
               '>'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
               '<'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
               '<='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
               '>='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
               '=='=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
               '&'=>{'boolean'=>{'boolean'=> 'boolean'}},
               '|'=>{'boolean'=>{'boolean'=> 'boolean'}},
               '='=>{'int'=>'int','float'=>'float','string'=>'string','boolean'=>'boolean'}
             }
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
    # 39:1: prog : PROGRAM LKEY ( dclrG ';' )* ( fun )* RKEY ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 39:11: PROGRAM LKEY ( dclrG ';' )* ( fun )* RKEY
        match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_prog_143 )
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_prog_145 )
        # at line 39:24: ( dclrG ';' )*
        while true # decision 1
          alt_1 = 2
          case look_1 = @input.peek( 1 )
          when T__44 then look_1_1 = @input.peek( 2 )

          if ( look_1_1 == ID )
            alt_1 = 1

          end
          when T__45 then look_1_2 = @input.peek( 2 )

          if ( look_1_2 == ID )
            alt_1 = 1

          end
          when T__46 then look_1_3 = @input.peek( 2 )

          if ( look_1_3 == ID )
            alt_1 = 1

          end
          when T__47 then look_1_4 = @input.peek( 2 )

          if ( look_1_4 == ID )
            alt_1 = 1

          end
          end
          case alt_1
          when 1
            # at line 39:25: dclrG ';'
            @state.following.push( TOKENS_FOLLOWING_dclrG_IN_prog_148 )
            dclrG
            @state.following.pop
            match( T__42, TOKENS_FOLLOWING_T__42_IN_prog_149 )

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        # at line 39:36: ( fun )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0.between?( T__44, T__47 ) )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 39:36: fun
            @state.following.push( TOKENS_FOLLOWING_fun_IN_prog_153 )
            fun
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_prog_156 )
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
    # 40:1: fun : b= type ':' a= ID LPAR RPAR bloq ;
    # 
    def fun
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      a = nil
      b = nil

      begin
        # at line 40:11: b= type ':' a= ID LPAR RPAR bloq
        @state.following.push( TOKENS_FOLLOWING_type_IN_fun_173 )
        b = type
        @state.following.pop
        match( T__43, TOKENS_FOLLOWING_T__43_IN_fun_175 )
        a = match( ID, TOKENS_FOLLOWING_ID_IN_fun_179 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_fun_181 )
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_fun_183 )
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_fun_185 )
        bloq
        @state.following.pop
        # --> action
        agc_6
        # <-- action

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
    # 41:1: bloq : LKEY ( ( est ( ';' | ')' ) ) | sIf | sWhile )* RKEY ;
    # 
    def bloq
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 41:11: LKEY ( ( est ( ';' | ')' ) ) | sIf | sWhile )* RKEY
        match( LKEY, TOKENS_FOLLOWING_LKEY_IN_bloq_197 )
        # at line 41:16: ( ( est ( ';' | ')' ) ) | sIf | sWhile )*
        while true # decision 3
          alt_3 = 4
          case look_3 = @input.peek( 1 )
          when MINUS, LPAR, OUT, OUTS, IN, ID, NUMBER, FLOAT, BOOL, STRING, T__44, T__45, T__46, T__47 then alt_3 = 1
          when IF then alt_3 = 2
          when WHILE then alt_3 = 3
          end
          case alt_3
          when 1
            # at line 41:17: ( est ( ';' | ')' ) )
            # at line 41:17: ( est ( ';' | ')' ) )
            # at line 41:18: est ( ';' | ')' )
            @state.following.push( TOKENS_FOLLOWING_est_IN_bloq_201 )
            est
            @state.following.pop
            if @input.peek(1) == RPAR || @input.peek(1) == T__42
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end




          when 2
            # at line 41:33: sIf
            @state.following.push( TOKENS_FOLLOWING_sIf_IN_bloq_210 )
            sIf
            @state.following.pop

          when 3
            # at line 41:39: sWhile
            @state.following.push( TOKENS_FOLLOWING_sWhile_IN_bloq_214 )
            sWhile
            @state.following.pop

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        match( RKEY, TOKENS_FOLLOWING_RKEY_IN_bloq_218 )

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
    # 42:1: est : ( dclr | asign | comp | prt | red ) ;
    # 
    def est
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 42:11: ( dclr | asign | comp | prt | red )
        # at line 42:11: ( dclr | asign | comp | prt | red )
        alt_4 = 5
        case look_4 = @input.peek( 1 )
        when T__44, T__45, T__46, T__47 then alt_4 = 1
        when ID then look_4_2 = @input.peek( 2 )

        if ( look_4_2 == EQLS )
          look_4_6 = @input.peek( 3 )

          if ( look_4_6 == MINUS || look_4_6 == LPAR || look_4_6.between?( ID, STRING ) )
            alt_4 = 2
          elsif ( look_4_6 == IN )
            alt_4 = 5
          else
            raise NoViableAlternative( "", 4, 6 )
          end
        elsif ( look_4_2.between?( PLUS, DIV ) || look_4_2 == RPAR || look_4_2.between?( GRTH, OR ) || look_4_2 == T__42 )
          alt_4 = 3
        else
          raise NoViableAlternative( "", 4, 2 )
        end
        when MINUS, LPAR, NUMBER, FLOAT, BOOL, STRING then alt_4 = 3
        when OUT, OUTS then alt_4 = 4
        when IN then alt_4 = 5
        else
          raise NoViableAlternative( "", 4, 0 )
        end
        case alt_4
        when 1
          # at line 42:12: dclr
          @state.following.push( TOKENS_FOLLOWING_dclr_IN_est_231 )
          dclr
          @state.following.pop

        when 2
          # at line 42:19: asign
          @state.following.push( TOKENS_FOLLOWING_asign_IN_est_235 )
          asign
          @state.following.pop

        when 3
          # at line 42:27: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_est_239 )
          comp
          @state.following.pop

        when 4
          # at line 42:34: prt
          @state.following.push( TOKENS_FOLLOWING_prt_IN_est_243 )
          prt
          @state.following.pop

        when 5
          # at line 42:40: red
          @state.following.push( TOKENS_FOLLOWING_red_IN_est_247 )
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
    # 43:1: prt : ( ( OUT LPAR ( comp )? RPAR ) | ( OUTS LPAR ( comp )? RPAR ) );
    # 
    def prt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 43:9: ( ( OUT LPAR ( comp )? RPAR ) | ( OUTS LPAR ( comp )? RPAR ) )
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == OUT )
          alt_7 = 1
        elsif ( look_7_0 == OUTS )
          alt_7 = 2
        else
          raise NoViableAlternative( "", 7, 0 )
        end
        case alt_7
        when 1
          # at line 43:11: ( OUT LPAR ( comp )? RPAR )
          # at line 43:11: ( OUT LPAR ( comp )? RPAR )
          # at line 43:12: OUT LPAR ( comp )? RPAR
          match( OUT, TOKENS_FOLLOWING_OUT_IN_prt_261 )
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_prt_263 )
          # at line 43:21: ( comp )?
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == MINUS || look_5_0 == LPAR || look_5_0.between?( ID, STRING ) )
            alt_5 = 1
          end
          case alt_5
          when 1
            # at line 43:21: comp
            @state.following.push( TOKENS_FOLLOWING_comp_IN_prt_265 )
            comp
            @state.following.pop

          end
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_prt_268 )
          # --> action
          agc_3('out')
          # <-- action


        when 2
          # at line 43:48: ( OUTS LPAR ( comp )? RPAR )
          # at line 43:48: ( OUTS LPAR ( comp )? RPAR )
          # at line 43:49: OUTS LPAR ( comp )? RPAR
          match( OUTS, TOKENS_FOLLOWING_OUTS_IN_prt_274 )
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_prt_276 )
          # at line 43:59: ( comp )?
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0 == MINUS || look_6_0 == LPAR || look_6_0.between?( ID, STRING ) )
            alt_6 = 1
          end
          case alt_6
          when 1
            # at line 43:59: comp
            @state.following.push( TOKENS_FOLLOWING_comp_IN_prt_278 )
            comp
            @state.following.pop

          end
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_prt_281 )
          # --> action
          agc_3('outln')
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
    # parser rule red
    # 
    # (in Rapier.g)
    # 44:1: red : (a= ID EQLS )? IN LPAR b= type RPAR ;
    # 
    def red
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      a = nil
      b = nil

      begin
        # at line 44:11: (a= ID EQLS )? IN LPAR b= type RPAR
        # at line 44:11: (a= ID EQLS )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == ID )
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 44:12: a= ID EQLS
          a = match( ID, TOKENS_FOLLOWING_ID_IN_red_299 )
          # --> action
          agc_1(a)
          # <-- action
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_red_303 )
          # --> action
          agc_2('=')
          # <-- action

        end
        match( IN, TOKENS_FOLLOWING_IN_IN_red_309 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_red_311 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_red_315 )
        b = type
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_red_317 )
        # --> action
        agc_3('in',b)
        # <-- action
        # --> action
        agc_3('=')
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
    # 45:1: sIf : IF LPAR comp RPAR bloq ( ELSE bloq )? ;
    # 
    def sIf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 45:11: IF LPAR comp RPAR bloq ( ELSE bloq )?
        match( IF, TOKENS_FOLLOWING_IF_IN_sIf_333 )
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sIf_335 )
        @state.following.push( TOKENS_FOLLOWING_comp_IN_sIf_337 )
        comp
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sIf_339 )
        # --> action
        agc_4('if')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_343 )
        bloq
        @state.following.pop
        # --> action
        agc_5('if')
        # <-- action
        # --> action
        agc_4('else')
        # <-- action
        # at line 45:78: ( ELSE bloq )?
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == ELSE )
          alt_9 = 1
        end
        case alt_9
        when 1
          # at line 45:79: ELSE bloq
          match( ELSE, TOKENS_FOLLOWING_ELSE_IN_sIf_350 )
          @state.following.push( TOKENS_FOLLOWING_bloq_IN_sIf_352 )
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
    # 46:1: sWhile : WHILE LPAR ( comp )? RPAR bloq ;
    # 
    def sWhile
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 46:11: WHILE LPAR ( comp )? RPAR bloq
        match( WHILE, TOKENS_FOLLOWING_WHILE_IN_sWhile_365 )
        # --> action
        agc_4()
        # <-- action
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_sWhile_369 )
        # at line 46:32: ( comp )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == MINUS || look_10_0 == LPAR || look_10_0.between?( ID, STRING ) )
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 46:32: comp
          @state.following.push( TOKENS_FOLLOWING_comp_IN_sWhile_371 )
          comp
          @state.following.pop

        end
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_sWhile_374 )
        # --> action
        agc_4('while')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_bloq_IN_sWhile_378 )
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
    # parser rule dclrG
    # 
    # (in Rapier.g)
    # 47:1: dclrG : b= type a= ID ( '=' comp )? ;
    # 
    def dclrG
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      a = nil
      b = nil

      begin
        # at line 47:11: b= type a= ID ( '=' comp )?
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclrG_392 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclrG_396 )
        # --> action
        agc_1(a,b,true,false,false,true)
        # <-- action
        # at line 47:58: ( '=' comp )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == EQLS )
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 47:59: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclrG_401 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclrG_406 )
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
    # parser rule dclr
    # 
    # (in Rapier.g)
    # 48:1: dclr : b= type a= ID ( '=' comp )? ;
    # 
    def dclr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      a = nil
      b = nil

      begin
        # at line 48:11: b= type a= ID ( '=' comp )?
        @state.following.push( TOKENS_FOLLOWING_type_IN_dclr_423 )
        b = type
        @state.following.pop
        a = match( ID, TOKENS_FOLLOWING_ID_IN_dclr_427 )
        # --> action
        agc_1(a,b,true)
        # <-- action
        # at line 48:41: ( '=' comp )?
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == EQLS )
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 48:42: '=' comp
          match( EQLS, TOKENS_FOLLOWING_EQLS_IN_dclr_432 )
          # --> action
          agc_2('=')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_comp_IN_dclr_437 )
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
        # trace_out( __method__, 10 )

      end
      
      return 
    end


    # 
    # parser rule asign
    # 
    # (in Rapier.g)
    # 49:1: asign : a= ID EQLS comp ;
    # 
    def asign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      a = nil

      begin
        # at line 49:11: a= ID EQLS comp
        a = match( ID, TOKENS_FOLLOWING_ID_IN_asign_453 )
        # --> action
        agc_1(a)
        # <-- action
        match( EQLS, TOKENS_FOLLOWING_EQLS_IN_asign_457 )
        # --> action
        agc_2('=')
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_comp_IN_asign_461 )
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
        # trace_out( __method__, 11 )

      end
      
      return 
    end


    # 
    # parser rule comp
    # 
    # (in Rapier.g)
    # 50:1: comp : ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )* ;
    # 
    def comp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      begin
        # at line 50:11: ( expr ) ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )*
        # at line 50:11: ( expr )
        # at line 50:12: expr
        @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_475 )
        expr
        @state.following.pop
        # --> action
        agc_3(['<','>','>=','<=','==','&','|'])
        # <-- action

        # at line 51:11: ( ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( GRTH, OR ) )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 51:12: ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) ) ( expr )
            # at line 51:12: ( ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR ) )
            # at line 51:13: ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR )
            # at line 51:13: ( LSTHE | GRTHE | LSTH | GRTH | EXEQ | AND | OR )
            alt_13 = 7
            case look_13 = @input.peek( 1 )
            when LSTHE then alt_13 = 1
            when GRTHE then alt_13 = 2
            when LSTH then alt_13 = 3
            when GRTH then alt_13 = 4
            when EXEQ then alt_13 = 5
            when AND then alt_13 = 6
            when OR then alt_13 = 7
            else
              raise NoViableAlternative( "", 13, 0 )
            end
            case alt_13
            when 1
              # at line 51:14: LSTHE
              match( LSTHE, TOKENS_FOLLOWING_LSTHE_IN_comp_492 )
              # --> action
              agc_2('<=')
              # <-- action

            when 2
              # at line 51:34: GRTHE
              match( GRTHE, TOKENS_FOLLOWING_GRTHE_IN_comp_496 )
              # --> action
              agc_2('>=')
              # <-- action

            when 3
              # at line 51:53: LSTH
              match( LSTH, TOKENS_FOLLOWING_LSTH_IN_comp_499 )
              # --> action
              agc_2('<')
              # <-- action

            when 4
              # at line 51:70: GRTH
              match( GRTH, TOKENS_FOLLOWING_GRTH_IN_comp_502 )
              # --> action
              agc_2('>')
              # <-- action

            when 5
              # at line 51:87: EXEQ
              match( EXEQ, TOKENS_FOLLOWING_EXEQ_IN_comp_505 )
              # --> action
              agc_2('==')
              # <-- action

            when 6
              # at line 51:105: AND
              match( AND, TOKENS_FOLLOWING_AND_IN_comp_508 )
              # --> action
              agc_2('&')
              # <-- action

            when 7
              # at line 51:121: OR
              match( OR, TOKENS_FOLLOWING_OR_IN_comp_511 )
              # --> action
              agc_2('|')
              # <-- action

            end

            # at line 52:11: ( expr )
            # at line 52:12: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_comp_527 )
            expr
            @state.following.pop
            # --> action
            agc_3(['<','>','>=','<=','==','&','|'])
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
        # trace_out( __method__, 12 )

      end
      
      return 
    end


    # 
    # parser rule expr
    # 
    # (in Rapier.g)
    # 53:1: expr : term ( ( ( PLUS | MINUS ) ) ( term ) )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 53:11: term ( ( ( PLUS | MINUS ) ) ( term ) )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_expr_541 )
        term
        @state.following.pop
        # at line 53:16: ( ( ( PLUS | MINUS ) ) ( term ) )*
        while true # decision 16
          alt_16 = 2
          look_16_0 = @input.peek( 1 )

          if ( look_16_0.between?( PLUS, MINUS ) )
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 53:17: ( ( PLUS | MINUS ) ) ( term )
            # at line 53:17: ( ( PLUS | MINUS ) )
            # at line 53:18: ( PLUS | MINUS )
            # at line 53:18: ( PLUS | MINUS )
            alt_15 = 2
            look_15_0 = @input.peek( 1 )

            if ( look_15_0 == PLUS )
              alt_15 = 1
            elsif ( look_15_0 == MINUS )
              alt_15 = 2
            else
              raise NoViableAlternative( "", 15, 0 )
            end
            case alt_15
            when 1
              # at line 53:20: PLUS
              match( PLUS, TOKENS_FOLLOWING_PLUS_IN_expr_547 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('+')
              # <-- action

            when 2
              # at line 53:57: MINUS
              match( MINUS, TOKENS_FOLLOWING_MINUS_IN_expr_553 )
              # --> action
              agc_3(['+','-'])
              # <-- action
              # --> action
              agc_2('-')
              # <-- action

            end

            # at line 53:95: ( term )
            # at line 53:96: term
            @state.following.push( TOKENS_FOLLOWING_term_IN_expr_560 )
            term
            @state.following.pop
            # --> action
            agc_3(['+','-'])
            # <-- action


          else
            break # out of loop for decision 16
          end
        end # loop for decision 16

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
    # parser rule term
    # 
    # (in Rapier.g)
    # 54:1: term : factor ( ( ( MULT | DIV ) ) ( factor ) )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 54:11: factor ( ( ( MULT | DIV ) ) ( factor ) )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_578 )
        factor
        @state.following.pop
        # at line 54:17: ( ( ( MULT | DIV ) ) ( factor ) )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0.between?( MULT, DIV ) )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 54:18: ( ( MULT | DIV ) ) ( factor )
            # at line 54:18: ( ( MULT | DIV ) )
            # at line 54:19: ( MULT | DIV )
            # at line 54:19: ( MULT | DIV )
            alt_17 = 2
            look_17_0 = @input.peek( 1 )

            if ( look_17_0 == MULT )
              alt_17 = 1
            elsif ( look_17_0 == DIV )
              alt_17 = 2
            else
              raise NoViableAlternative( "", 17, 0 )
            end
            case alt_17
            when 1
              # at line 54:21: MULT
              match( MULT, TOKENS_FOLLOWING_MULT_IN_term_583 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('*')
              # <-- action

            when 2
              # at line 54:58: DIV
              match( DIV, TOKENS_FOLLOWING_DIV_IN_term_589 )
              # --> action
              agc_3(['*','/'])
              # <-- action
              # --> action
              agc_2('/')
              # <-- action

            end

            # at line 54:94: ( factor )
            # at line 54:95: factor
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_596 )
            factor
            @state.following.pop
            # --> action
            agc_3(['*','/'])
            # <-- action


          else
            break # out of loop for decision 18
          end
        end # loop for decision 18

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
    # parser rule factor
    # 
    # (in Rapier.g)
    # 55:1: factor : ( elem | LPAR expr RPAR );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      begin
        # at line 55:9: ( elem | LPAR expr RPAR )
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == MINUS || look_19_0.between?( ID, STRING ) )
          alt_19 = 1
        elsif ( look_19_0 == LPAR )
          alt_19 = 2
        else
          raise NoViableAlternative( "", 19, 0 )
        end
        case alt_19
        when 1
          # at line 55:11: elem
          @state.following.push( TOKENS_FOLLOWING_elem_IN_factor_610 )
          elem
          @state.following.pop

        when 2
          # at line 55:18: LPAR expr RPAR
          match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_614 )
          # --> action
          agc_2('(')
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expr_IN_factor_618 )
          expr
          @state.following.pop
          match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_620 )
          # --> action
          agc_3
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
    # parser rule elem
    # 
    # (in Rapier.g)
    # 56:1: elem : ( ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) | (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) );
    # 
    def elem
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      a = nil

      begin
        # at line 56:9: ( ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) | (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID ) )
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == MINUS )
          alt_22 = 1
        elsif ( look_22_0.between?( ID, STRING ) )
          alt_22 = 2
        else
          raise NoViableAlternative( "", 22, 0 )
        end
        case alt_22
        when 1
          # at line 56:10: ( '-' ) (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          # at line 56:10: ( '-' )
          # at line 56:11: '-'
          match( MINUS, TOKENS_FOLLOWING_MINUS_IN_elem_633 )
          # --> action
          agc_1('-1','int',false,true)
          # <-- action
          # --> action
          agc_2('*')
          # <-- action

          # at line 56:58: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          alt_20 = 5
          case look_20 = @input.peek( 1 )
          when NUMBER then alt_20 = 1
          when FLOAT then alt_20 = 2
          when BOOL then alt_20 = 3
          when STRING then alt_20 = 4
          when ID then alt_20 = 5
          else
            raise NoViableAlternative( "", 20, 0 )
          end
          case alt_20
          when 1
            # at line 56:60: a= NUMBER
            a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_642 )
            # --> action
            agc_1(a, 'int',false,true)
            # <-- action

          when 2
            # at line 56:99: a= FLOAT
            a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_649 )
            # --> action
            agc_1(a, 'float',false,true)
            # <-- action

          when 3
            # at line 56:139: a= BOOL
            a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_656 )
            # --> action
            agc_1(a, 'boolean',false,true)
            # <-- action

          when 4
            # at line 56:180: a= STRING
            a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_663 )
            # --> action
            agc_1(a, 'string',false,true)
            # <-- action

          when 5
            # at line 56:222: a= ID
            a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_670 )
            # --> action
            agc_1(a)
            # <-- action

          end
          # --> action
          agc_3(['*'])
          # <-- action

        when 2
          # at line 56:253: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          # at line 56:253: (a= NUMBER | a= FLOAT | a= BOOL | a= STRING | a= ID )
          alt_21 = 5
          case look_21 = @input.peek( 1 )
          when NUMBER then alt_21 = 1
          when FLOAT then alt_21 = 2
          when BOOL then alt_21 = 3
          when STRING then alt_21 = 4
          when ID then alt_21 = 5
          else
            raise NoViableAlternative( "", 21, 0 )
          end
          case alt_21
          when 1
            # at line 56:255: a= NUMBER
            a = match( NUMBER, TOKENS_FOLLOWING_NUMBER_IN_elem_680 )
            # --> action
            agc_1(a, 'int',false,true)
            # <-- action

          when 2
            # at line 56:294: a= FLOAT
            a = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_elem_687 )
            # --> action
            agc_1(a, 'float',false,true)
            # <-- action

          when 3
            # at line 56:334: a= BOOL
            a = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_elem_694 )
            # --> action
            agc_1(a, 'boolean',false,true)
            # <-- action

          when 4
            # at line 56:375: a= STRING
            a = match( STRING, TOKENS_FOLLOWING_STRING_IN_elem_701 )
            # --> action
            agc_1(a, 'string',false,true)
            # <-- action

          when 5
            # at line 56:417: a= ID
            a = match( ID, TOKENS_FOLLOWING_ID_IN_elem_708 )
            # --> action
            agc_1(a)
            # <-- action

          end
          # --> action
          agc_3(['*'])
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return 
    end


    # 
    # parser rule type
    # 
    # (in Rapier.g)
    # 57:1: type returns [string t] : ( 'int' | 'float' | 'string' | 'boolean' );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      t = nil

      begin
        # at line 57:25: ( 'int' | 'float' | 'string' | 'boolean' )
        alt_23 = 4
        case look_23 = @input.peek( 1 )
        when T__44 then alt_23 = 1
        when T__45 then alt_23 = 2
        when T__46 then alt_23 = 3
        when T__47 then alt_23 = 4
        else
          raise NoViableAlternative( "", 23, 0 )
        end
        case alt_23
        when 1
          # at line 57:27: 'int'
          match( T__44, TOKENS_FOLLOWING_T__44_IN_type_724 )
          # --> action
          t='int'
          # <-- action

        when 2
          # at line 57:46: 'float'
          match( T__45, TOKENS_FOLLOWING_T__45_IN_type_730 )
          # --> action
          t='float'
          # <-- action

        when 3
          # at line 57:69: 'string'
          match( T__46, TOKENS_FOLLOWING_T__46_IN_type_736 )
          # --> action
          t='string'
          # <-- action

        when 4
          # at line 57:94: 'boolean'
          match( T__47, TOKENS_FOLLOWING_T__47_IN_type_742 )
          # --> action
          t='boolean'
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )

      end
      
      return t
    end



    TOKENS_FOLLOWING_PROGRAM_IN_prog_143 = Set[ 10 ]
    TOKENS_FOLLOWING_LKEY_IN_prog_145 = Set[ 11, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_dclrG_IN_prog_148 = Set[ 42 ]
    TOKENS_FOLLOWING_T__42_IN_prog_149 = Set[ 11, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_fun_IN_prog_153 = Set[ 11, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_RKEY_IN_prog_156 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_fun_173 = Set[ 43 ]
    TOKENS_FOLLOWING_T__43_IN_fun_175 = Set[ 28 ]
    TOKENS_FOLLOWING_ID_IN_fun_179 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_fun_181 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_fun_183 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_fun_185 = Set[ 1 ]
    TOKENS_FOLLOWING_LKEY_IN_bloq_197 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_est_IN_bloq_201 = Set[ 9, 42 ]
    TOKENS_FOLLOWING_set_IN_bloq_202 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_sIf_IN_bloq_210 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_sWhile_IN_bloq_214 = Set[ 5, 8, 11, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_RKEY_IN_bloq_218 = Set[ 1 ]
    TOKENS_FOLLOWING_dclr_IN_est_231 = Set[ 1 ]
    TOKENS_FOLLOWING_asign_IN_est_235 = Set[ 1 ]
    TOKENS_FOLLOWING_comp_IN_est_239 = Set[ 1 ]
    TOKENS_FOLLOWING_prt_IN_est_243 = Set[ 1 ]
    TOKENS_FOLLOWING_red_IN_est_247 = Set[ 1 ]
    TOKENS_FOLLOWING_OUT_IN_prt_261 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_prt_263 = Set[ 5, 8, 9, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_prt_265 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_prt_268 = Set[ 1 ]
    TOKENS_FOLLOWING_OUTS_IN_prt_274 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_prt_276 = Set[ 5, 8, 9, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_prt_278 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_prt_281 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_red_299 = Set[ 19 ]
    TOKENS_FOLLOWING_EQLS_IN_red_303 = Set[ 27 ]
    TOKENS_FOLLOWING_IN_IN_red_309 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_red_311 = Set[ 44, 45, 46, 47 ]
    TOKENS_FOLLOWING_type_IN_red_315 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_red_317 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_sIf_333 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sIf_335 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_sIf_337 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sIf_339 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_343 = Set[ 1, 23 ]
    TOKENS_FOLLOWING_ELSE_IN_sIf_350 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sIf_352 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_sWhile_365 = Set[ 8 ]
    TOKENS_FOLLOWING_LPAR_IN_sWhile_369 = Set[ 5, 8, 9, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_sWhile_371 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_sWhile_374 = Set[ 10 ]
    TOKENS_FOLLOWING_bloq_IN_sWhile_378 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_dclrG_392 = Set[ 28 ]
    TOKENS_FOLLOWING_ID_IN_dclrG_396 = Set[ 1, 19 ]
    TOKENS_FOLLOWING_EQLS_IN_dclrG_401 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_dclrG_406 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_dclr_423 = Set[ 28 ]
    TOKENS_FOLLOWING_ID_IN_dclr_427 = Set[ 1, 19 ]
    TOKENS_FOLLOWING_EQLS_IN_dclr_432 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_dclr_437 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_asign_453 = Set[ 19 ]
    TOKENS_FOLLOWING_EQLS_IN_asign_457 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_comp_IN_asign_461 = Set[ 1 ]
    TOKENS_FOLLOWING_expr_IN_comp_475 = Set[ 1, 12, 13, 14, 15, 16, 17, 18 ]
    TOKENS_FOLLOWING_LSTHE_IN_comp_492 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_GRTHE_IN_comp_496 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_LSTH_IN_comp_499 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_GRTH_IN_comp_502 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_EXEQ_IN_comp_505 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_AND_IN_comp_508 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_OR_IN_comp_511 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_expr_IN_comp_527 = Set[ 1, 12, 13, 14, 15, 16, 17, 18 ]
    TOKENS_FOLLOWING_term_IN_expr_541 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_PLUS_IN_expr_547 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_MINUS_IN_expr_553 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_term_IN_expr_560 = Set[ 1, 4, 5 ]
    TOKENS_FOLLOWING_factor_IN_term_578 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_MULT_IN_term_583 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_DIV_IN_term_589 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_596 = Set[ 1, 6, 7 ]
    TOKENS_FOLLOWING_elem_IN_factor_610 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_614 = Set[ 5, 8, 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_expr_IN_factor_618 = Set[ 9 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_620 = Set[ 1 ]
    TOKENS_FOLLOWING_MINUS_IN_elem_633 = Set[ 28, 29, 30, 31, 32 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_642 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_649 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_656 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_663 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_670 = Set[ 1 ]
    TOKENS_FOLLOWING_NUMBER_IN_elem_680 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_elem_687 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_elem_694 = Set[ 1 ]
    TOKENS_FOLLOWING_STRING_IN_elem_701 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_elem_708 = Set[ 1 ]
    TOKENS_FOLLOWING_T__44_IN_type_724 = Set[ 1 ]
    TOKENS_FOLLOWING_T__45_IN_type_730 = Set[ 1 ]
    TOKENS_FOLLOWING_T__46_IN_type_736 = Set[ 1 ]
    TOKENS_FOLLOWING_T__47_IN_type_742 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end


class Home <Calabash::ABase

    def initialize
        #visor
        @visor = "* id:'result'"

        #botoes
        @botao_0 = "* id:'digit_0'"
        @botao_1 = "* id:'digit_1'"
        @botao_2 = "* id:'digit_2'"
        @botao_3 = "* id:'digit_3'"
        @botao_4 = "* id:'digit_4'"
        @botao_5 = "* id:'digit_5'"
        @botao_6 = "* id:'digit_6'"
        @botao_7 = "* id:'digit_7'"
        @botao_8 = "* id:'digit_8'"
        @botao_9 = "* id:'digit_9'"
        @botao_mais = "* id:'op_add'"
        @botao_menos = "* id:'op_sub'"
        @botao_div = "* id:'op_div'"
        @botao_mult = "* id:'op_mul'"
        @botao_igual = "* id:'eq'"
        #Botoes Formula
        @botao_formulas ="* id:'arrow'"
        @botao_inv ="* id:'toggle_inv'"
        @botao_deg ="* id:'toggle_mode'"
        @botao_por ="* id:'op_pct'"
        @botao_sin ="* id:'fun_sin'"
        @botao_cos ="* id:'fun_cos'"
        @botao_tan ="* id:'fun_tan'"
        @botao_in ="* id:'fun_ln'"
        @botao_log ="* id:'fun_log'"
        @botao_exc ="* id:'op_fact'"
        @botao_pi ="* id:'const_pi'"
        @botao_e ="* id:'const_e'"
        @botao_up ="* id:'op_pow'"
        @botao_lp ="* id:'lparen'"
        @botao_rp ="* id:'rparen'"
        @botao_raiz ="* id:'op_sqrt'"
    end

    def verificar
        element_exists(@botao_0)
        pan_right
    end

    def recebe_interacao(input)
        input.each_char do |i|
            clicar(i)
        end
    end

    def recebe_formula_ou_operacao(input)
        touch(instance_variable_get("@" + 'botao_'+input).intern)
    end

    def clicar(input)
        touch(instance_variable_get("@" + 'botao_'+input).intern)
    end

    def validar_resultado(valor)
        assert_text(valor)
    end
end
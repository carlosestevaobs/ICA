function Funcao_derivada_logistica = FuncaoDerivadaLogistica(Dados)
    Funcao_derivada_logistica = Dados .* (1-Dados);                      %  Equa��o 7.13 - Derivada da camada oculta
end
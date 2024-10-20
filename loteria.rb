class Loteria
    attr_accessor :jogos, :ganhos, :total_apostado, :total_ganho

    def initialize
      @jogos = []
      @ganhos = 0
      @total_apostado = 0
      @total_ganho = 0
    end

    # Adicionar um jogo à lista de jogos
    def adicionar_jogo(aposta, resultado, valor_apostado, valor_ganho = 0)
      acertos = (aposta & resultado).size # Conta quantos números correspondem
      @jogos << { aposta: aposta, resultado: resultado, acertos: acertos, valor_apostado: valor_apostado, valor_ganho: valor_ganho }
      @total_apostado += valor_apostado
      @total_ganho += valor_ganho
      @ganhos += 1 if acertos == aposta.size # Considera "ganho" somente se todos os números baterem
    end

    # Calcula a taxa de sucesso em termos de acertos
    def calcular_taxa_sucesso
      return 0 if @jogos.empty?
      (@ganhos.to_f / @jogos.size) * 100
    end

    # Calcula o Retorno sobre o Investimento (ROI)
    def calcular_roi
      return 0 if @total_apostado.zero?
      ((@total_ganho - @total_apostado).to_f / @total_apostado) * 100
    end
  end
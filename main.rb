require_relative 'loteria'

   loteria = Loteria.new

   # Adicionando alguns jogos (Aposta, Resultado, Valor Apostado, Valor Ganho)
   loteria.adicionar_jogo([03, 10, 23, 18], [03, 10, 23, 18], 5, 1.000) # Acerto total
   loteria.adicionar_jogo([1, 2, 3, 4], [5, 6, 7, 8], 5, 0)   # Erro total
   loteria.adicionar_jogo([1, 2, 3, 4], [1, 2, 3, 9], 5, 10)  # Acerto parcial

   # Exibindo os resultados
   puts "Taxa de Sucesso: #{loteria.calcular_taxa_sucesso}%"
   puts "ROI: #{loteria.calcular_roi}%"
def main
  novo_jogo = "s"
  while novo_jogo == "s"
    puts "Tente adivinhar em um número que estou pensando entre 1 a 100:"
    seu_numero = gets.to_i
    pc_numero = Random.rand(99) + 1

    tentativas = 1
    while pc_numero != seu_numero
      if pc_numero > seu_numero
        puts "O número é maior que #{seu_numero}"
      else
        puts "O número é menor que #{seu_numero}"
      end
      tentativas +=1
      puts "Tente novamente :)"
      seu_numero = gets.to_i
    end

    puts "Parabéns o número sorteado é #{pc_numero}"
    puts "Você usou #{tentativas} tentativas"

    # Novo novo_jogo
    puts "Deseja jogar novamente ?"
    novo_jogo = gets.chomp
  end
puts "Obrigado por jogar ;)"
end
main
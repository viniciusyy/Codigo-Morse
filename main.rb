class Morse
  def initialize
    # Define a tabela de tradução de Morse para caracteres comuns
    @morse_to_char = {
      '.-'    => 'A', '-...'  => 'B', '-.-.'  => 'C', '-..'   => 'D',
      '.'     => 'E', '..-.'  => 'F', '--.'   => 'G', '....'  => 'H',
      '..'    => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
      '--'    => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
      '--.-'  => 'Q', '.-.'   => 'R', '...'   => 'S', '-'     => 'T',
      '..-'   => 'U', '...-'  => 'V', '.--'   => 'W', '-..-'  => 'X',
      '-.--'  => 'Y', '--..'  => 'Z', '-----' => '0', '.----' => '1',
      '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
      '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
      '.-.-.-'=> '.', '--..--'=> ',', '-..-.' => '/', '..--..'=> '?'
    }
  end

  # Retorna o caractere correspondente ao código Morse dado
  def tradutor(morse)
    return @morse_to_char[morse] if @morse_to_char.key?(morse)
    # Retorna '?' para códigos Morse inválidos ou não mapeados
    '?'
  end

  # Método para entrada de código Morse e saída de caracteres comuns
  def tradutor_input
    print "Digite o código Morse: "
    morse_input = gets.chomp.split(' ')  # Divide o input em caracteres morse separados por espaço
    tradu = morse_input.map { |code| tradutor(code) }
    puts "Tradução: #{tradu.join}"
  end
end


tradutor = Morse.new
tradutor.tradutor_input


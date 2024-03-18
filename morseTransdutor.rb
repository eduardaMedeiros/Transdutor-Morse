class MorseTransdutor
  POINT = '.'
  SPACE = ' '
  DASH = '-'

  def inicializar
    @estado = :q0
    @texto_traduzido = ''
  end

  def tradutor_char(char)
    case [@estado, char]
    in [:q0, POINT]
      @estado = :q1

    in [:q0, DASH]
      @estado = :q2

    in [:q1, SPACE]
      @estado = :q0
      @texto_traduzido << 'e'

    in [:q1, POINT]
      @estado = :q3

    in [:q1, DASH]
      @estado = :q4

    in [:q2, SPACE]
      @estado = :q0
      @texto_traduzido << 't'

    in [:q2, POINT]
      @estado = :q5

    in [:q2, DASH]
      @estado = :q6

    in [:q3, SPACE]
      @estado = :q0
      @texto_traduzido << 'i'

    in [:q3, POINT]
      @estado = :q7

    in [:q3, DASH]
      @estado = :q8

    in [:q4, SPACE]
      @estado = :q0
      @texto_traduzido << 'a'

    in [:q4, POINT]
      @estado = :q9

    in [:q4, DASH]
      @estado = :q10

    in [:q5, SPACE]
      @estado = :q0
      @texto_traduzido << 'n'

    in [:q5, POINT]
      @estado = :q11

    in [:q5, DASH]
      @estado = :q12

    in [:q6, SPACE]
      @estado = :q0
      @texto_traduzido << 'm'

    in [:q6, POINT]
      @estado = :q13

    in [:q6, DASH]
      @estado = :q14

    in [:q7, SPACE]
      @estado = :q0
      @texto_traduzido << 's'

    in [:q7, POINT]
      @estado = :q15

    in [:q7, DASH]
      @estado = :q16

    in [:q8, SPACE]
      @estado = :q0
      @texto_traduzido << 'u'

    in [:q8, POINT]
      @estado = :q17

    in [:q8, DASH]
      @estado = :q18

    in [:q9, SPACE]
      @estado = :q0
      @texto_traduzido << 'r'

    in [:q9, POINT]
      @estado = :q19

    in [:q9, DASH]
      @estado = :q20

    in [:q10, SPACE]
      @estado = :q0
      @texto_traduzido << 'w'

    in [:q10, POINT]
      @estado = :q21

    in [:q10, DASH]
      @estado = :q22

    in [:q11, SPACE]
      @estado = :q0
      @texto_traduzido << 'd'

    in [:q11, POINT]
      @estado = :q23

    in [:q11, DASH]
      @estado = :q24

    in [:q12, SPACE]
      @estado = :q0
      @texto_traduzido << 'k'

    in [:q12, POINT]
      @estado = :q25

    in [:q12, DASH]
      @estado = :q26

    in [:q13, SPACE]
      @estado = :q0
      @texto_traduzido << 'g'

    in [:q13, POINT]
      @estado = :q27

    in [:q13, DASH]
      @estado = :q28

    in [:q14, SPACE]
      @estado = :q0
      @texto_traduzido << 'o'

    in [:q14, POINT]
      @estado = :q43

    in [:q14, DASH]
      @estado = :q45

    in [:q15, SPACE]
      @estado = :q0
      @texto_traduzido << 'h'

    in [:q15, POINT]
      @estado = :q40

    in [:q15, DASH]
      @estado = :q41

    in [:q16, SPACE]
      @estado = :q0
      @texto_traduzido << 'v'

    in [:q16, DASH]
      @estado = :q39

    in [:q17, SPACE]
      @estado = :q0
      @texto_traduzido << 'f'

    in [:q18, POINT]
      @estado = :q29

    in [:q18, DASH]
      @estado = :q42

    in [:q19, SPACE]
      @estado = :q0
      @texto_traduzido << 'l'

    in [:q20, POINT]
      @estado = :q30

    in [:q21, SPACE]
      @estado = :q0
      @texto_traduzido << 'p'

    in [:q22, SPACE]
      @estado = :q0
      @texto_traduzido << 'j'

    in [:q22, DASH]
      @estado = :q37

    in [:q23, SPACE]
      @estado = :q0
      @texto_traduzido << 'b'

    in [:q23, POINT]
      @estado = :q31

    in [:q24, SPACE]
      @estado = :q0
      @texto_traduzido << 'x'

    in [:q25, SPACE]
      @estado = :q0
      @texto_traduzido << 'c'

    in [:q26, SPACE]
      @estado = :q0
      @texto_traduzido << 'y'

    in [:q27, SPACE]
      @estado = :q0
      @texto_traduzido << 'z'

    in [:q27, POINT]
      @estado = :q38

    in [:q27, DASH]
      @estado = :q32

    in [:q28, SPACE]
      @estado = :q0
      @texto_traduzido << 'q'

    in [:q29, POINT]
      @estado = :q33

    in [:q30, DASH]
      @estado = :q34

    in [:q31, SPACE]
      @estado = :q0
      @texto_traduzido << '6'

    in [:q31, DASH]
      @estado = :q35

    in [:q32, DASH]
      @estado = :q36

    in [:q33, SPACE]
      @estado = :q0
      @texto_traduzido << '?'

    in [:q34, SPACE]
      @estado = :q0
      @texto_traduzido << '.'

    in [:q35, SPACE]
      @estado = :q0
      @texto_traduzido << '-'

    in [:q36, SPACE]
      @estado = :q0
      @texto_traduzido << ','

    in [:q37, SPACE]
      @estado = :q0
      @texto_traduzido << '1'

    in [:q38, SPACE]
      @estado = :q0
      @texto_traduzido << '7'

    in [:q39, SPACE]
      @estado = :q0
      @texto_traduzido << '3'

    in [:q40, SPACE]
      @estado = :q0
      @texto_traduzido << '5'

    in [:q41, SPACE]
      @estado = :q0
      @texto_traduzido << '4'

    in [:q42, SPACE]
      @estado = :q0
      @texto_traduzido << '2'

    in [:q43, POINT]
      @estado = :q44

    in [:q44, SPACE]
      @estado = :q0
      @texto_traduzido << '8'

    in [:q45, POINT]
      @estado = :q46

    in [:q45, DASH]
      @estado = :q47

    in [:q46, SPACE]
      @estado = :q0
      @texto_traduzido << '9'

    in [:q47, SPACE]
      @estado = :q0
      @texto_traduzido << '0'

    else
      return false
    end

    true
  end

  def tradutor(text)
    inicializar

    deu_certo = true
    text.each_char do |char|
      deu_certo = tradutor_char(char)

      if !deu_certo
        break
      end
    end

    if deu_certo and @estado == :q0
      puts @texto_traduzido
    else
      puts 'Sequencia Invalida'
    end
  end
end

input = '..- -- . -..- . -- .--. .-.. --- -.. . -.-. --- -.. .. --. --- -- --- .-. ... . .---- --... '
# letras
#input = '.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.. '
# numeros
#input = '.---- ..--- ...-- ....- ..... -.... --... ---.. ----. ----- '
# especiais
#input = '--..-- .-.-.- ..--.. -....- '
translator = MorseTransdutor.new
translator.tradutor(input)

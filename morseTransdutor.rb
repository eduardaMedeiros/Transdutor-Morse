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
      end
    end
  
    def tradutor(text)
      text.each_char do |char|
        tradutor_char(char)
      end
  
      puts @texto_traduzido
    end
  end
  
  input = '..- -- . -..- . -- .--. .-.. --- -.. . -.-. --- -.. .. --. --- -- --- .-. ... . .---- ----- '
  
  translator = MorseTransdutor.new
  translator.inicializar
  translator.tradutor(input)
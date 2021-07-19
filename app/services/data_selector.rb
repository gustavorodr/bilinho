# frozen_string_literal: true

class DataSelector
  def initialize(vencimento)
    @vencimento = vencimento

    t = Date.now

    @mes = if t.day < vencimento
             t.mounth + 1
           else
             t.month
           end

    @ano = t.year
  end
  # adotar regra pro dia 31 sempre voltar pro ultimo dia do mês

  def data(index)
    if @mes < 12
      @mes += index
    else
      @mes = 1
      @ano += 1
    end
    Date.new(@ano, @mes, @vencimento)
  end
end

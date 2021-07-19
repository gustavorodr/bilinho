class DataSelector
  def initialize(vencimento)
    @vencimento = vencimento

    t = Date.now

    if t.day < vencimento
      @mes = t.mounth + 1
    else
      @mes = t.month
    end

    @ano = t.year
  end
  #adotar regra pro dia 31 sempre voltar pro ultimo dia do mês

  def data(index)
    if @mes < 12
      @mes += index
    else
      @mes = 1
      @ano += 1
    end
    finalDate = Date.new(@ano, @mes, @vencimento)
    return finalDate
  end
end

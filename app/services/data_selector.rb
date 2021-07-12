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

  def data(index)
    if @mes < 12
      @mes += index
    else
      @mes = 1
      @ano += 1
    end
    @data = Date.new(@ano, @mes, @vencimento)
  end
end
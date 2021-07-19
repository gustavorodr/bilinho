class ValueSelector
  def initialize(valorTotal, numeroFaturas)
    @numeroFaturas =numeroFaturas

    valorMensal = valorTotal / numeroFaturas
    @faturas = valorMensal.ceil(2)

    descontoMensal = @faturas - valorMensal
    descontoMensal *= numeroFaturas

    @lastFatura = @faturas - descontoMensal
    @lastFatura = @lastFatura.ceil(2)
  end
  def valor(index)
    if index == @numeroFaturas
      return @lastFatura
    else
      return @faturas
    end
end
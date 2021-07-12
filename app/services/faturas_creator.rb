class FaturaCreator
  def initialize(valorTotal, quantMatriculas, dia, matricula_id)
    @valorTotal = valorTotal
    @faturas = faturas
    @dia = dia
    @matricula_id = matricula_id
  end

  def create
    dataSelector = DataSelector.new(params[@dia])
    for i in 0..@faturas do
      valor = ValueSelector.new(params[@valorTotal, @faturas,i]).valorFinal
      vencimento = dataSelector(i).data
      fatura = Fatura.new(valor, vencimento, @matricula_id, 'ABERTA')
			if fatura.save
				render json: {status: 'SUCCESS', message:'Fatura #{i} salva', data:fatura},status: :ok
      else
				render json: {status: 'ERROR', message:'Fatura #{i} nao salva', data:fatura.erros},status: :unprocessable_entity
			end
    end
  end
  def destroy
    for i in 0..@faturas do
      fatura = Fatura.find(params[:matricula_id])
      fatura.destroy
			render json: {status: 'SUCCESS', message:'Fatura #{i} excluida', data:fatura},status: :ok
    end
  end
  # Parametros aceitos
  private
  def fatura_params
    params.permit(:valor, :vencimento, :matricula_id, :status)
  end
end

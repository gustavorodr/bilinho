class CreateMatriculas < ActiveRecord::Migration[6.1]
  def self.up
    create_table :matriculas do |t|
      t.decimal valor
      t.integer faturas
      t.integer vencimento
      t.string curso, :limit => 50
      #duvida aqui devo usar: belongs_to?
      t.references instituicao_id
      t.references aluno_id
      #duvida aqui devo usar: belongs_to?
      t.timestamps
    end
  end

  def self.down
    drop_table :matriculas
 end
end

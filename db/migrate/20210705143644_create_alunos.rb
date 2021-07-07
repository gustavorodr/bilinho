class CreateAlunos < ActiveRecord::Migration[6.1]
  def self.up
    create_table :alunos do |t|
      t.string  :nome
      t.string  :cpf
      t.date :nascimento
      t.integer :celular
      t.string :sexo
      t.string :pagamento
      t.timestamps
    end
  end
  def self.down
    drop_table :alunos
  end
end

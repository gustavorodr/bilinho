class CreateAlunos < ActiveRecord::Migration[6.1]
  def self.up
    create_table :alunos do |t|
      t.string  :nome, :limit => 50
      t.string  :cpf, :limit => 11
      t.date :nascimento
      t.integer :celular
      t.string :sexo, limit => 1
      t.string :pagamento, limit => 12
      t.timestamps
    end
  end
  def self.down
    drop_table :alunos
  end
end

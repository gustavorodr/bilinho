class CreateFaturas < ActiveRecord::Migration[6.1]
  def self.up
    create_table :faturas do |t|
      t.money valor
      t.date vencimento
      #duvida aqui devo usar: belongs_to?
      t.references matricula_id
      #duvida aqui devo usar: belongs_to?
      t.string status, :limit => 8

      t.timestamps
    end
  end

  def self.down
    drop_table :faturas
 end
end

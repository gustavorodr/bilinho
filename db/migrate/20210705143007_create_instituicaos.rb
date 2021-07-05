class CreateInstituicaos < ActiveRecord::Migration[6.1]
  def change
    create_table :instituicaos do |t|
      t.string  :nome, :limit => 50
      t.string  :cnpj, :limit => 14
      t.string  :tipo, :limit => 12
      t.timestamps
    end
  end
end

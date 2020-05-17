class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.timestamp :nasc
      t.string :cpf
      t.string :rg
      t.string :telefone

      t.timestamps
    end
  end
end

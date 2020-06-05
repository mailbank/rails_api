class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.timestamp :nasc
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :CEP
      t.string :cidade
      t.string :estado
      t.string :rua
      t.string :bairro
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

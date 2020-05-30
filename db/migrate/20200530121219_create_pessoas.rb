class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :name
      t.date :birth
      t.string :cpf
      t.string :rg
      t.string :tel
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

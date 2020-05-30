class CreateApiV1Pessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_pessoas do |t|
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

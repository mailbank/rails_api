class CreateSaldos < ActiveRecord::Migration[6.0]
  def change
    create_table :saldos do |t|
      t.float :valor
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddSaldoToPessoa < ActiveRecord::Migration[6.0]
  def change
    add_column :pessoas, :saldo, :integer
  end
end

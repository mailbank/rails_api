class RemoveSaldoFromPessoas < ActiveRecord::Migration[6.0]
  def change
    remove_column :pessoas, :saldo, :integer
  end
end

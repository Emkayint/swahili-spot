class AddMerchidToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :merchid, :string
  end
end

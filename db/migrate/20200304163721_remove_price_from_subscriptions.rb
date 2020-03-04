class RemovePriceFromSubscriptions < ActiveRecord::Migration[6.0]
  def change

    remove_column :subscriptions, :price, :integer
  end
end

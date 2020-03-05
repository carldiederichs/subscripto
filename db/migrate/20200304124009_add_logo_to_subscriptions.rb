class AddLogoToSubscriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :subscriptions, :logo, :string
  end
end

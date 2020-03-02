class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.integer :price
      t.date :creation_date
      t.date :renewal_date

      t.timestamps
    end
  end
end

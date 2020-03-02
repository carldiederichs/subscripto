class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :logo
      t.text :description

      t.timestamps
    end
  end
end

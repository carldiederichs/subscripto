class RemoveDescriptionFromCompanies < ActiveRecord::Migration[6.0]
  def change

    remove_column :companies, :description, :string
  end
end

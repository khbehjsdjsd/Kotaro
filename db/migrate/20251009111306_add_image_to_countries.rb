class AddImageToCountries < ActiveRecord::Migration[7.2]
  def change
    add_column :countries, :image, :string
  end
end

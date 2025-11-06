class CreateCountries < ActiveRecord::Migration[7.2]
  def change
    create_table :countries do |t|
      t.string :locate
      t.datetime :date
      t.string :charm
      t.string :city_name
      t.string :country_name
      t.integer :user_id
      t.timestamps
    end
  end
end

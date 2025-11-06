class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :countries do |t|
      t.string :locate
      t.string :image
      t.datetime :date
      t.string :charm
 add_column :countries, :image, :string
      t.timestamps
    end
  end
end

class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.string :city_img_url

      t.timestamps
    end
  end
end

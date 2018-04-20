class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.belongs_to :city, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.date :date_created
      t.string :description

      t.timestamps
    end
  end
end

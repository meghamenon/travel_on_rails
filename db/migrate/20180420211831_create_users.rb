class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    t.string :name
    t.date :date_joined
    t.string :address
    t.string :user_img_url
    t.string :password_digest
    t.string :email
    t.string :username
    t.timestamps
    end
  end
end

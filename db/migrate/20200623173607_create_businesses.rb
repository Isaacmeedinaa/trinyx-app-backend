class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :image
      t.string :business_industry
      t.string :email
      t.string :phone_number
      t.string :location
      t.string :lat
      t.string :lng
      t.string :password_digest

      t.timestamps
    end
  end
end

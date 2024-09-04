class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :contact, foreign_key: true
      t.string :city
      t.string :street
      t.string :uf
      t.string :neighborhood
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.string :number
      t.string :complement
    end
  end
end

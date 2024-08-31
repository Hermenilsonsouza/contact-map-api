class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

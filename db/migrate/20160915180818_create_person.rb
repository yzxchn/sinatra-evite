class CreatePerson < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :zipcode
    end
  end
end

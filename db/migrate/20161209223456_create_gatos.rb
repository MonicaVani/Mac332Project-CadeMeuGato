class CreateGatos < ActiveRecord::Migration
  def change
    create_table :gatos do |t|
      t.string :name
      t.string :gender
      t.string :race
      t.string :color
      t.string :photo
      t.text :description
      t.string :status
      t.date :age

      t.timestamps null: false
    end
  end
end

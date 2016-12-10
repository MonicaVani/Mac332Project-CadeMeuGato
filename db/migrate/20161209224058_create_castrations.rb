class CreateCastrations < ActiveRecord::Migration
  def change
    create_table :castrations do |t|
      t.string :place
      t.float :price
      t.date :when

      t.timestamps null: false
    end
  end
end

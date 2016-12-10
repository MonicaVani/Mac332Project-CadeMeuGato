class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end

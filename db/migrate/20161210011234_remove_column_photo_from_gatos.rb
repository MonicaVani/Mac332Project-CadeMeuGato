class RemoveColumnPhotoFromGatos < ActiveRecord::Migration
  def change
    remove_column :gatos, :photo
  end
end

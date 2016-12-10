class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def up
    add_attachment :gatos, :avatar
  end

  def down
    remove_attachment :gatos, :avatar
  end
end

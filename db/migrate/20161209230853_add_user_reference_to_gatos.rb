class AddUserReferenceToGatos < ActiveRecord::Migration
  def change
    add_reference :gatos, :user, index: true, foreign_key: true
  end
end

class AddCastrationReferenceToGatos < ActiveRecord::Migration
  def change
    add_reference :gatos, :castration, index: true, foreign_key: true
  end
end

class ChangeColumnNameTypeFromPosters < ActiveRecord::Migration
  def change
    rename_column :posters, :type, :tipo
  end
end

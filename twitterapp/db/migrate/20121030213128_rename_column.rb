class RenameColumn < ActiveRecord::Migration
  def change
  rename_column User, :udi, :uid

  end
end

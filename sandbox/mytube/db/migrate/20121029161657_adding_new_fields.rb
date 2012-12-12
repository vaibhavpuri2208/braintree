class AddingNewFields < ActiveRecord::Migration
  def up
  add_column Videodb, :caption, :string
  add_column Videodb, :url, :string
  end

  def down
  end
end

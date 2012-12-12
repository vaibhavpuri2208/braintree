class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :udi
      t.string :name

      t.timestamps
    end
  end
end

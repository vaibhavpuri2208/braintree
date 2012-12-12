class CreateVideodbs < ActiveRecord::Migration
  def change
    create_table :videodbs do |t|

      t.timestamps
    end
  end
end

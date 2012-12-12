class CreateTweetboxes < ActiveRecord::Migration
  def change
    create_table :tweetboxes do |t|

      t.timestamps
    end
  end
end

class CreateBlogEntries < ActiveRecord::Migration
  def self.up
    create_table :blog_entries do |t|
      t.string :subject
      t.text :content
      t.datetime :publish_at

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_entries
  end
end

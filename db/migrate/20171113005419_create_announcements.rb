class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :topic
      t.text :content

      t.timestamps
    end
  end
end

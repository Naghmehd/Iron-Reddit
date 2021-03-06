class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :link, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.string :message, null: false
      t.string :author, null: false
      t.timestamps null: false
    end
  end
end

class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.belongs_to :link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

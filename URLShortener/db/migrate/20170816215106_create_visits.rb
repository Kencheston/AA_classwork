class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :user_id, null: false
      t.integer :url_id, null: false
      t.timestamps
    end

    add_index :visits, :url_id
  end
end
class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.boolean :disp_flg
      t.datetime :start
      t.datetime :finish
      t.string :all_day
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end

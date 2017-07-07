class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.references :offer, null:false, foreign_key: true
      t.references :company, null:false, foreign_key: true
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :company, null:false, foreign_key: true
      t.string :title, null: false
      t.string :image
      t.string :job
      t.text   :what
      t.text   :why
      t.text   :how
      t.text   :thing
      t.timestamps
    end
  end
end

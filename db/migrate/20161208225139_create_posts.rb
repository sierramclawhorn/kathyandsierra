class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user
      t.date :date
      t.references :location
      t.string :sierraTitle
      t.text :sierraBody 
      t.string :kathyTitle
      t.text :kathyBody

      t.timestamps
    end
  end
end

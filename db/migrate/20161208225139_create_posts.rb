class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :date
      t.references :location
      t.string :title
      t.text :sierraBody 
      t.text :kathyBody

      t.timestamps
    end
  end
end

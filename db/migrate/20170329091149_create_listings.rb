class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end

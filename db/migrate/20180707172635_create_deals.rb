class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :title
      t.string :location
      t.datetime :expiration_date
      t.string :image
      t.integer :total_votes
      t.integer :poster_id
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end

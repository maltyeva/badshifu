class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :worker, foreign_key: true
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end

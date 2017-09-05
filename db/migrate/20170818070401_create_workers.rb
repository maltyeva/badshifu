class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :phone
      t.string :wechat
      t.integer :rate
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end

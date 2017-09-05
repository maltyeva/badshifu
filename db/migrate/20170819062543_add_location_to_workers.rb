class AddLocationToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :location, :string
  end
end

class AddOwnerToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :owner, :string
  end
end

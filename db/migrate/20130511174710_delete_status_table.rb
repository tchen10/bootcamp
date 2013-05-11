class DeleteStatusTable < ActiveRecord::Migration
  def change
    drop_table :status
  end
end

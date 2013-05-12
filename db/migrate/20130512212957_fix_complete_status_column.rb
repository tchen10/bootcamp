class FixCompleteStatusColumn < ActiveRecord::Migration
    remove_column :tasks, :complete

    add_column :tasks, :complete, :boolean, :default => false
end

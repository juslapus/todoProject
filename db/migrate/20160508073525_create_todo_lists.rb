class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :list
      t.text :description

      t.timestamps null: false
    end
  end
end
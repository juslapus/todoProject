class TodoList < ActiveRecord::Base
	belongs_to :user
	has_many :todo_items
 	validates :list, presence: true
end

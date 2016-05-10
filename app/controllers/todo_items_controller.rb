class TodoItemsController < ApplicationController
	before_action :set_todo_list, :set_todo_item

	def create
		@todo_item = @todo_list.todo_items.create(item_params)

		redirect_to @todo_list
	end

	def show
		@todo_item = TodoItem.find(params[:id])
	end

	private
	    def set_todo_list
	      @todo_list = TodoList.find(params[:todo_list_id])
	    end

		def item_params
			params.require(:todo_item).permit(:item)
		end

		def set_todo_item
			@todo_item = TodoItem.find(params[:id])
		end
end

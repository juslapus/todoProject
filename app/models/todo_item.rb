class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  validates :item, presence: true

  def completed?
  	!completed_at.blank?
  end

end

class AddIndexUserToClass < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :user, index: true
    add_reference :attendances, :user, index: true
  end
end

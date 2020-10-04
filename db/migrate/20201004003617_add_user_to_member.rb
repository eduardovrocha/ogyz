class AddUserToMember < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :user, :string
  end
end

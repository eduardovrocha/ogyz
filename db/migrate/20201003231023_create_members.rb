class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.numeric :age

      t.timestamps
    end
  end
end

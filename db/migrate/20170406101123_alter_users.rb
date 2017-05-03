class AlterUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :Gender, :boolean, null:"false", default: "Male"
  end
end

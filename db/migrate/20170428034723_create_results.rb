class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.column :json_data, :json

      t.timestamps
    end
  end
end

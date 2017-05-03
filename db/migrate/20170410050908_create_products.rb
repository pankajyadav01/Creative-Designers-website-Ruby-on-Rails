class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :filetype
      t.string :title
      t.string :description
      t.decimal :price
      t.string :uploaded_by
      t.string :tutorial_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

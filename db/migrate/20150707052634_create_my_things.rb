class CreateMyThings < ActiveRecord::Migration
  def change
    create_table :my_things do |t|
      t.belongs_to :stuff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

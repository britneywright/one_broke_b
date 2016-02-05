class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :amount, null: false

      t.timestamps null: false
    end
  end
end

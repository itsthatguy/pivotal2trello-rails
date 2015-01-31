class CreateTrellos < ActiveRecord::Migration
  def change
    create_table :trellos do |t|

      t.timestamps null: false
    end
  end
end

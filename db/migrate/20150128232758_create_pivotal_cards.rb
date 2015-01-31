class CreatePivotalCards < ActiveRecord::Migration
  def change
    create_table :pivotal_cards do |t|

      t.timestamps null: false
    end
  end
end

class CreateTrelloCards < ActiveRecord::Migration
  def change
    create_table :trello_cards do |t|

      t.timestamps null: false
    end
  end
end

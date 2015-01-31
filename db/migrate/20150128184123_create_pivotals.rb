class CreatePivotals < ActiveRecord::Migration
  def change
    create_table :pivotals do |t|

      t.timestamps null: false
    end
  end
end

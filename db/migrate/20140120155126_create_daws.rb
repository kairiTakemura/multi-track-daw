class CreateDaws < ActiveRecord::Migration
  def change
    create_table :daws do |t|

      t.timestamps
    end
  end
end

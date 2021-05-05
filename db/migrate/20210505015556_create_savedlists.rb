class CreateSavedlists < ActiveRecord::Migration[5.1]
  def change
    create_table :savedlists do |t|

      t.timestamps
    end
  end
end

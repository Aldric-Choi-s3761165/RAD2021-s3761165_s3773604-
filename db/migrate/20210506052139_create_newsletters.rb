class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.boolean :subscribe, default: true

      t.timestamps
    end
  end
end

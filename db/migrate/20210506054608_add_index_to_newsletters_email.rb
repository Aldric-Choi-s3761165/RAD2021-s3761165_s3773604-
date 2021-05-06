class AddIndexToNewslettersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index:newsletters, :email, unique:true
  end
end

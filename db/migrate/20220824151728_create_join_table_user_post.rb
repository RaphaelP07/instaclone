class CreateJoinTableUserPost < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :posts, table_name: :likes do |t|
      t.index :user_id
      t.references :likeable, polymorphic: true, null: false
    end
  end
end

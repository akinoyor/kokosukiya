class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|

      t.integer :user_id,     null: false
      t.integer :category_id, null: false
      t.string  :title,       null: false
      t.string  :body
      t.integer :publish,     null: false,default: "0"
      t.timestamps
    end
  end
end

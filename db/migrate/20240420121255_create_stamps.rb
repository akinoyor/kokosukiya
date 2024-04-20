class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|

      t.integer :movie_id,null: false
      t.integer :time,    null: false
      t.string  :memo,
      t.timestamps
    end
  end
end

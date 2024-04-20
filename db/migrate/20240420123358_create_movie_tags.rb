class CreateMovieTags < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_tags do |t|

      t.integer :movie_id,null:false
      t.integer :tag_id,  null:false
      t.timestamps
    end
  end
end

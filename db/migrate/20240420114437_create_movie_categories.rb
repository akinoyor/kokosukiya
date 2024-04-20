class CreateMovieCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_categories do |t|
      
      t.string :category,null: false
      t.timestamps
    end
  end
end

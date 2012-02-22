class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.date :year
      t.string :director
      t.string :language
      t.string :genre

      t.timestamps
    end
  end
end

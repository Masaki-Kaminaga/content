class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :body
      t.string :password
      t.text :post_url
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end

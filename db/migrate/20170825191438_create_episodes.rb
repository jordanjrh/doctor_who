class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end

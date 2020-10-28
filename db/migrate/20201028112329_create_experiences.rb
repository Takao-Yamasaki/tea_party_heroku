class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string   :title
      t.integer  :fee
      t.string   :prefecture
      t.string   :region
      t.text     :content
      t.datetime :start_datetime
      t.datetime :finish_datetime
      t.string   :language
      t.timestamps
    end
  end
end

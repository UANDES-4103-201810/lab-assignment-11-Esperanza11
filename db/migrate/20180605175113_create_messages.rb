class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

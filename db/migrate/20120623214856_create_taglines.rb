class CreateTaglines < ActiveRecord::Migration
  def change
    create_table :taglines do |t|
      t.string :phrase

      t.timestamps
    end
  end
end

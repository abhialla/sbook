class CreatePivots < ActiveRecord::Migration
  def self.up
    create_table :pivots do |t|
      t.text :description
      t.string :image_url
      t.boolean :like

      t.timestamps
    end
  end

  def self.down
    drop_table :pivots
  end
end

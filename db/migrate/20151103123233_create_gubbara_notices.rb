class CreateGubbaraNotices < ActiveRecord::Migration
  def change
    create_table :gubbara_notices do |t|
      t.string :message
      t.boolean :active, default: true
      t.string :background_color, default: '#0275d8'
      t.string :font_color, default: '#ffffff'
      t.string :font_size, default: '20px'
      t.string :text_align, default: 'center'
      t.string :cross_button_color, default: '#ffffff'
      t.string :z_index, default: '9999'
      t.string :base

      t.timestamps
    end
  end
end

class CreateGubbaraNotices < ActiveRecord::Migration
  def change
    create_table :gubbara_notices do |t|
      t.string :message

      t.timestamps
    end
  end
end

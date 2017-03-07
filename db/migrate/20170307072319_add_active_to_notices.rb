class AddActiveToNotices < ActiveRecord::Migration
  def change
    add_column :gubbara_notices, :active, :boolean, default: true
  end
end

class CreateGubbaraJoinModels < ActiveRecord::Migration
  def change
    create_table :gubbara_join_models do |t|
      t.string :notice_id
      t.string :integer
      t.string :model_id
      t.string :integer

      t.timestamps
    end
  end
end

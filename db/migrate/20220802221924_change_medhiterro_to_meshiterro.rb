class ChangeMedhiterroToMeshiterro < ActiveRecord::Migration[6.1]
  def
    rename_table :medhiterro, :meshiterro
  end
end

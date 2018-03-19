class CreateVins < ActiveRecord::Migration[5.1]
  def change
    create_table :vins do |t|
      t.string :region
      t.string :appelation
      t.string :vignoble
      t.string :producteur
      t.string :alcool
      t.integer :parker
      t.integer :jrobinson
      t.integer :prix_btl
      t.integer :annee
      t.integer :nb_btl_caisse

      t.timestamps
    end
  end
end

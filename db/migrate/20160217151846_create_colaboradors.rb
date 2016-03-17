class CreateColaboradors < ActiveRecord::Migration
  def change
    create_table :colaboradors do |t|
      t.string :nome
      t.string :hotel
      t.string :setor
      t.string :transporte
      t.string :data_envio
      t.string :data_confirma
      t.string :chave_entrega
      t.string :preimo
      t.string :checkin
      t.timestamps null: false
    end
  end
end

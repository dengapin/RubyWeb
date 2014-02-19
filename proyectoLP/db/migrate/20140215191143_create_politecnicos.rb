class CreatePolitecnicos < ActiveRecord::Migration
  def change
    create_table :politecnicos do |t|
      t.string :nombre
      t.string :apellido
      t.text :materia

      t.timestamps
    end
  end
end

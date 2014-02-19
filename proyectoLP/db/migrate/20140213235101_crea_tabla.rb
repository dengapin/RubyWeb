class CreaTabla < ActiveRecord::Migration
  def self.up
    create_table :estudiante do |tabla|
      tabla.string :nombre, :limit => 80, :null => false
      tabla.string :apellido_materno, :limit => 80
      tabla.string :apellido_paterno, :limit => 80
      # El nombre que debemos desplegar en pantalla
      tabla.string :desplegar, :limit => 80
      tabla.string :sexo, :limit => 10, :default => 'Hombre', :null => false
      tabla.text :materias
    end
  end
  
  def self.down
    drop_table:estudiantes
   end
  end

class AddApellidoNombrecompletoToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :apellido, :string, default: 'NN'
    add_column :users, :nombrecompleto, :string, default: 'NN'
  end
end

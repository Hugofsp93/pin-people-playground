class AddIndexesToEmployeeFeedbacks < ActiveRecord::Migration[7.2]
  def change
    add_index :employee_feedbacks, :email
    add_index :employee_feedbacks, :cargo
    add_index :employee_feedbacks, :area
    add_index :employee_feedbacks, :genero
    add_index :employee_feedbacks, :data_resposta
    add_index :employee_feedbacks, :tempo_de_empresa
  end
end

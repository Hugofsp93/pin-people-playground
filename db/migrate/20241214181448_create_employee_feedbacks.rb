class CreateEmployeeFeedbacks < ActiveRecord::Migration[7.2]
  def change
    create_table :employee_feedbacks do |t|
      t.string :nome
      t.string :email
      t.string :email_corporativo
      t.string :celular
      t.string :area
      t.string :cargo
      t.string :funcao
      t.string :localidade
      t.decimal :tempo_de_empresa
      t.string :genero
      t.string :geracao
      t.string :n0_empresa
      t.string :n1_diretoria
      t.string :n2_gerencia
      t.string :n3_coordenacao
      t.string :n4_area
      t.date :data_resposta
      t.boolean :interesse_no_cargo
      t.text :comentarios_interesse
      t.decimal :contribuicao
      t.text :comentarios_contribuicao
      t.decimal :aprendizado_desenvolvimento
      t.text :comentarios_aprendizado
      t.decimal :feedback
      t.text :comentarios_feedback
      t.decimal :interacao_gestor
      t.text :comentarios_interacao
      t.decimal :clareza_carreira
      t.text :comentarios_clareza
      t.decimal :expectativa_permanencia
      t.text :comentarios_permanencia
      t.decimal :enps
      t.text :comentarios_enps

      t.timestamps
    end
  end
end

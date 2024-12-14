# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'csv'

CSV.foreach(Rails.root.join('db/seeds/data.csv'), headers: true, col_sep: ';') do |row|
  EmployeeFeedback.create(
    nome: row['nome'],
    email: row['email'],
    email_corporativo: row['email_corporativo'],
    celular: row['celular'],
    area: row['area'],
    cargo: row['cargo'],
    funcao: row['funcao'],
    localidade: row['localidade'],
    tempo_de_empresa: row['tempo_de_empresa'].presence&.to_f,
    genero: row['genero'],
    geracao: row['geracao'],
    n0_empresa: row['n0_empresa'],
    n1_diretoria: row['n1_diretoria'],
    n2_gerencia: row['n2_gerencia'],
    n3_coordenacao: row['n3_coordenacao'],
    n4_area: row['n4_area'],
    data_resposta: Date.strptime(row['Data da Resposta'], "%d/%m/%Y"),
    interesse_no_cargo: row['Interesse no Cargo'] == 'true',
    comentarios_interesse: row['Comentários - Interesse no Cargo'],
    contribuicao: row['Contribuição'].presence&.to_f,
    comentarios_contribuicao: row['Comentários - Contribuição'],
    aprendizado_desenvolvimento: row['Aprendizado e Desenvolvimento'].presence&.to_f,
    comentarios_aprendizado: row['Comentários - Aprendizado e Desenvolvimento'],
    feedback: row['Feedback'].presence&.to_f,
    comentarios_feedback: row['Comentários - Feedback'],
    interacao_gestor: row['Interação com Gestor'].presence&.to_f,
    comentarios_interacao: row['Comentários - Interação com Gestor'],
    clareza_carreira: row['Clareza sobre Possibilidades de Carreira'].presence&.to_f,
    comentarios_clareza: row['Comentários - Clareza sobre Possibilidades de Carreira'],
    expectativa_permanencia: row['Expectativa de Permanência'].presence&.to_f,
    comentarios_permanencia: row['Comentários - Expectativa de Permanência'],
    enps: row['eNPS'].presence&.to_f,
    comentarios_enps: row['[Aberta] eNPS']
  )
end

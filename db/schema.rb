# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_14_181520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_feedbacks", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "email_corporativo"
    t.string "celular"
    t.string "area"
    t.string "cargo"
    t.string "funcao"
    t.string "localidade"
    t.decimal "tempo_de_empresa"
    t.string "genero"
    t.string "geracao"
    t.string "n0_empresa"
    t.string "n1_diretoria"
    t.string "n2_gerencia"
    t.string "n3_coordenacao"
    t.string "n4_area"
    t.date "data_resposta"
    t.boolean "interesse_no_cargo"
    t.text "comentarios_interesse"
    t.decimal "contribuicao"
    t.text "comentarios_contribuicao"
    t.decimal "aprendizado_desenvolvimento"
    t.text "comentarios_aprendizado"
    t.decimal "feedback"
    t.text "comentarios_feedback"
    t.decimal "interacao_gestor"
    t.text "comentarios_interacao"
    t.decimal "clareza_carreira"
    t.text "comentarios_clareza"
    t.decimal "expectativa_permanencia"
    t.text "comentarios_permanencia"
    t.decimal "enps"
    t.text "comentarios_enps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area"], name: "index_employee_feedbacks_on_area"
    t.index ["cargo"], name: "index_employee_feedbacks_on_cargo"
    t.index ["data_resposta"], name: "index_employee_feedbacks_on_data_resposta"
    t.index ["email"], name: "index_employee_feedbacks_on_email"
    t.index ["genero"], name: "index_employee_feedbacks_on_genero"
    t.index ["tempo_de_empresa"], name: "index_employee_feedbacks_on_tempo_de_empresa"
  end
end

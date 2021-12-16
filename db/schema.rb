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

ActiveRecord::Schema.define(version: 2021_12_16_022032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividad_paras", force: :cascade do |t|
    t.string "nombre"
    t.bigint "actividads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actividads_id"], name: "index_actividad_paras_on_actividads_id"
  end

  create_table "actividads", force: :cascade do |t|
    t.string "act_para"
    t.string "trabajo"
    t.date "fecha"
    t.string "campo"
    t.string "fitosanitario"
    t.float "dosis"
    t.float "cantidad"
    t.float "litros_caldo"
    t.string "plaga"
    t.string "justifica_tratamiento"
    t.string "numero_lote"
    t.string "bodega"
    t.string "det_med_no_quimica"
    t.string "tipo_actuacion"
    t.string "intensidad_actuacion"
    t.date "fecha_actuacion"
    t.string "trabajador"
    t.string "maquina"
    t.time "horas"
    t.time "minutos"
    t.text "notas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asesors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_materno"
    t.string "apellido_paterno"
    t.string "rut"
    t.string "email"
    t.string "telefono"
    t.string "numero_inscripcion"
    t.string "tipo_representacion"
    t.bigint "explotacions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["explotacions_id"], name: "index_asesors_on_explotacions_id"
  end

  create_table "bodegas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "direccion"
    t.string "comuna"
    t.string "region"
    t.string "pais"
    t.bigint "actividads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actividads_id"], name: "index_bodegas_on_actividads_id"
  end

  create_table "campos", force: :cascade do |t|
    t.string "nombre"
    t.string "superficie"
    t.bigint "explotacions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["explotacions_id"], name: "index_campos_on_explotacions_id"
  end

  create_table "cultivos", force: :cascade do |t|
    t.string "nombre"
    t.bigint "fitosanitarios_id", null: false
    t.bigint "actividads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actividads_id"], name: "index_cultivos_on_actividads_id"
    t.index ["fitosanitarios_id"], name: "index_cultivos_on_fitosanitarios_id"
  end

  create_table "explotacions", force: :cascade do |t|
    t.string "nombre_explotacion"
    t.string "rut"
    t.string "email"
    t.string "direccion"
    t.string "telefono"
    t.string "localidad"
    t.string "comuna"
    t.string "region"
    t.string "pais"
    t.string "thumbnail"
    t.string "image"
    t.string "nacional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fitosanitarios", force: :cascade do |t|
    t.string "nombre"
    t.string "registro"
    t.string "funcion"
    t.string "fabricante"
    t.date "fecha_caducidad"
    t.string "ambito_utilizacion"
    t.float "unidades"
    t.float "litros_caldo_defecto"
    t.string "cultivo"
    t.float "dosis"
    t.float "unidades_dosis"
    t.string "periodo_seguridad"
    t.binary "ficha_tecnica"
    t.bigint "actividads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actividads_id"], name: "index_fitosanitarios_on_actividads_id"
  end

  create_table "representacions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.bigint "representantes_id", null: false
    t.bigint "explotacions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["explotacions_id"], name: "index_representacions_on_explotacions_id"
    t.index ["representantes_id"], name: "index_representacions_on_representantes_id"
  end

  create_table "representantes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_materno"
    t.string "apellido_paterno"
    t.string "rut"
    t.string "email"
    t.string "direccion"
    t.string "localidad"
    t.string "comuna"
    t.string "region"
    t.string "pais"
    t.string "telefono"
    t.string "tipo_representacion"
    t.bigint "explotacions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["explotacions_id"], name: "index_representantes_on_explotacions_id"
  end

  create_table "tipo_trabajadors", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trabajos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.bigint "actividads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actividads_id"], name: "index_trabajos_on_actividads_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_materno"
    t.string "apellido_paterno"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "actividad_paras", "actividads", column: "actividads_id"
  add_foreign_key "asesors", "explotacions", column: "explotacions_id"
  add_foreign_key "bodegas", "actividads", column: "actividads_id"
  add_foreign_key "campos", "explotacions", column: "explotacions_id"
  add_foreign_key "cultivos", "actividads", column: "actividads_id"
  add_foreign_key "cultivos", "fitosanitarios", column: "fitosanitarios_id"
  add_foreign_key "fitosanitarios", "actividads", column: "actividads_id"
  add_foreign_key "representacions", "explotacions", column: "explotacions_id"
  add_foreign_key "representacions", "representantes", column: "representantes_id"
  add_foreign_key "representantes", "explotacions", column: "explotacions_id"
  add_foreign_key "trabajos", "actividads", column: "actividads_id"
end

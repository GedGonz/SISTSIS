# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160601194132) do

  create_table "asignaturas", force: :cascade do |t|
    t.string   "Titulo",         limit: 255
    t.string   "Descripcion",    limit: 255
    t.string   "Tipoasignatura", limit: 255
    t.integer  "Credito",        limit: 4
    t.integer  "Prerrequisito",  limit: 4
    t.integer  "Prescedencia",   limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "Pais",        limit: 255
    t.string   "Descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer  "Country_id",   limit: 4
    t.string   "Departamento", limit: 255
    t.string   "Descripcion",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "departamentos", ["Country_id"], name: "index_departamentos_on_Country_id", using: :btree

  create_table "docente_estudios", force: :cascade do |t|
    t.integer  "Docente_id", limit: 4
    t.string   "Estudio",    limit: 255
    t.integer  "Ano",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "docente_estudios", ["Docente_id"], name: "index_docente_estudios_on_Docente_id", using: :btree

  create_table "docentes", force: :cascade do |t|
    t.integer  "Persona_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "docentes", ["Persona_id"], name: "index_docentes_on_Persona_id", using: :btree

  create_table "estudiante_estudios", force: :cascade do |t|
    t.integer  "Estudiante_id", limit: 4
    t.string   "Estudio",       limit: 255
    t.integer  "Ano",           limit: 4
    t.string   "Presedencia",   limit: 255
    t.integer  "Tipo",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "estudiante_estudios", ["Estudiante_id"], name: "index_estudiante_estudios_on_Estudiante_id", using: :btree

  create_table "estudiante_trabajos", force: :cascade do |t|
    t.integer  "Estudiante_id", limit: 4
    t.string   "Nombrelugar",   limit: 255
    t.string   "Cargo",         limit: 255
    t.string   "Tiempo",        limit: 255
    t.integer  "Telefono",      limit: 4
    t.string   "Direccion",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "estudiante_trabajos", ["Estudiante_id"], name: "index_estudiante_trabajos_on_Estudiante_id", using: :btree

  create_table "estudiantes", force: :cascade do |t|
    t.integer  "Persona_id", limit: 4
    t.string   "Carnet",     limit: 255
    t.integer  "Estado",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "estudiantes", ["Persona_id"], name: "index_estudiantes_on_Persona_id", using: :btree

  create_table "matriculas", force: :cascade do |t|
    t.integer  "Estudiante_id", limit: 4
    t.integer  "Estado",        limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "matriculas", ["Estudiante_id"], name: "index_matriculas_on_Estudiante_id", using: :btree

  create_table "modulos", force: :cascade do |t|
    t.string   "Modulo",      limit: 255
    t.string   "Descripcion", limit: 255
    t.integer  "Estado",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.integer  "Departamento_id", limit: 4
    t.string   "Municipio",       limit: 255
    t.string   "Descripcion",     limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "municipios", ["Departamento_id"], name: "index_municipios_on_Departamento_id", using: :btree

  create_table "nacionalidads", force: :cascade do |t|
    t.integer  "Persona_id", limit: 4
    t.integer  "Country_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "nacionalidads", ["Country_id"], name: "index_nacionalidads_on_Country_id", using: :btree
  add_index "nacionalidads", ["Persona_id"], name: "index_nacionalidads_on_Persona_id", using: :btree

  create_table "opcions", force: :cascade do |t|
    t.integer  "Modulo_id",   limit: 4
    t.string   "Opcion",      limit: 255
    t.string   "Descripcion", limit: 255
    t.integer  "Id_Padre",    limit: 4
    t.integer  "Estado",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "opcions", ["Modulo_id"], name: "index_opcions_on_Modulo_id", using: :btree

  create_table "padres", force: :cascade do |t|
    t.integer  "Persona_id",    limit: 4
    t.integer  "Estudiante_id", limit: 4
    t.string   "Parentesco",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "padres", ["Estudiante_id"], name: "index_padres_on_Estudiante_id", using: :btree
  add_index "padres", ["Persona_id"], name: "index_padres_on_Persona_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.string   "Primernombre",    limit: 255
    t.string   "Segundonombre",   limit: 255
    t.string   "Primerapellido",  limit: 255
    t.string   "Segundoapellido", limit: 255
    t.integer  "Edad",            limit: 4
    t.string   "Tiposanguineo",   limit: 255
    t.string   "Foto",            limit: 255
    t.string   "Cedula",          limit: 255
    t.string   "Direccion",       limit: 255
    t.string   "Estadocivil",     limit: 255
    t.integer  "Celular",         limit: 4
    t.integer  "Telefono",        limit: 4
    t.string   "Genero",          limit: 255
    t.integer  "Estado",          limit: 4
    t.integer  "Municipio_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "personas", ["Municipio_id"], name: "index_personas_on_Municipio_id", using: :btree

  create_table "regimen_asignaturas", force: :cascade do |t|
    t.integer  "Asignatura_id", limit: 4
    t.integer  "Regime_id",     limit: 4
    t.string   "Codigo",        limit: 255
    t.integer  "hrsemana",      limit: 4
    t.integer  "hrtotales",     limit: 4
    t.integer  "Estado",        limit: 4
    t.string   "Planestudio",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "regimen_asignaturas", ["Asignatura_id"], name: "index_regimen_asignaturas_on_Asignatura_id", using: :btree
  add_index "regimen_asignaturas", ["Regime_id"], name: "index_regimen_asignaturas_on_Regime_id", using: :btree

  create_table "regimes", force: :cascade do |t|
    t.string   "Regimen",     limit: 255
    t.string   "Descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string   "Rol",         limit: 255
    t.string   "Descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tasa_dolars", force: :cascade do |t|
    t.decimal  "Tasa",                 precision: 10
    t.integer  "Dia",        limit: 4
    t.integer  "Mes",        limit: 4
    t.integer  "Ano",        limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "usuario_opcions", force: :cascade do |t|
    t.integer  "Usuario_id", limit: 4
    t.integer  "Opcion_id",  limit: 4
    t.integer  "Estado",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "usuario_opcions", ["Opcion_id"], name: "index_usuario_opcions_on_Opcion_id", using: :btree
  add_index "usuario_opcions", ["Usuario_id"], name: "index_usuario_opcions_on_Usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.integer  "Persona_id", limit: 4
    t.integer  "Rol_id",     limit: 4
    t.string   "Usuario",    limit: 255
    t.string   "Password",   limit: 255
    t.integer  "Estado",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "usuarios", ["Persona_id"], name: "index_usuarios_on_Persona_id", using: :btree
  add_index "usuarios", ["Rol_id"], name: "index_usuarios_on_Rol_id", using: :btree

  add_foreign_key "departamentos", "countries", column: "Country_id"
  add_foreign_key "docente_estudios", "docentes", column: "Docente_id"
  add_foreign_key "docentes", "personas", column: "Persona_id"
  add_foreign_key "estudiante_estudios", "estudiantes", column: "Estudiante_id"
  add_foreign_key "estudiante_trabajos", "estudiantes", column: "Estudiante_id"
  add_foreign_key "estudiantes", "personas", column: "Persona_id"
  add_foreign_key "matriculas", "estudiantes", column: "Estudiante_id"
  add_foreign_key "municipios", "departamentos", column: "Departamento_id"
  add_foreign_key "nacionalidads", "countries", column: "Country_id"
  add_foreign_key "nacionalidads", "personas", column: "Persona_id"
  add_foreign_key "opcions", "modulos", column: "Modulo_id"
  add_foreign_key "padres", "estudiantes", column: "Estudiante_id"
  add_foreign_key "padres", "personas", column: "Persona_id"
  add_foreign_key "personas", "municipios", column: "Municipio_id"
  add_foreign_key "regimen_asignaturas", "asignaturas", column: "Asignatura_id"
  add_foreign_key "regimen_asignaturas", "regimes", column: "Regime_id"
  add_foreign_key "usuario_opcions", "opcions", column: "Opcion_id"
  add_foreign_key "usuario_opcions", "usuarios", column: "Usuario_id"
  add_foreign_key "usuarios", "personas", column: "Persona_id"
  add_foreign_key "usuarios", "rols", column: "Rol_id"
end

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

ActiveRecord::Schema.define(version: 2021_12_08_123532) do

  create_table "blogs", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mensajes", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "autor"
    t.text "mensaje"
    t.bigint "usuario_id", null: false
    t.bigint "publicacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publicacion_id"], name: "index_mensajes_on_publicacion_id"
    t.index ["usuario_id"], name: "index_mensajes_on_usuario_id"
  end

  create_table "propietarios", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "blog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_id"], name: "index_propietarios_on_blog_id"
    t.index ["usuario_id"], name: "index_propietarios_on_usuario_id"
  end

  create_table "publicacions", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.bigint "usuario_id", null: false
    t.bigint "blog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_id"], name: "index_publicacions_on_blog_id"
    t.index ["usuario_id"], name: "index_publicacions_on_usuario_id"
  end

  create_table "usuarios", charset: "utf8mb3", collation: "utf8_bin", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "mensajes", "publicacions"
  add_foreign_key "mensajes", "usuarios"
  add_foreign_key "propietarios", "blogs"
  add_foreign_key "propietarios", "usuarios"
  add_foreign_key "publicacions", "blogs"
  add_foreign_key "publicacions", "usuarios"
end

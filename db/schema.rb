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

ActiveRecord::Schema[7.0].define(version: 2023_05_05_123011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_view "views_all_users_contents", sql_definition: <<-SQL
      SELECT concat('Comment', '-', comments.id) AS id,
      comments.body,
      'Comment'::text AS contentable_type,
      comments.id AS contentable_id,
      comments.created_at,
      comments.updated_at
     FROM comments
  UNION
   SELECT concat('Post', '-', posts.id) AS id,
      posts.body,
      'Post'::text AS contentable_type,
      posts.id AS contentable_id,
      posts.created_at,
      posts.updated_at
     FROM posts;
  SQL
end

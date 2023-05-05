class CreateViewsAllUsersContents < ActiveRecord::Migration[7.0]
  def change
    create_view :views_all_users_contents
  end
end

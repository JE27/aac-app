class UsersController < ApplicationController

  def users_index_action
    response = Unirest.get ("http://localhost:3000/users")
    user_hashes = response.body
    users = []
    user_hashes.each do |user_hash|
      users << Users.new(user_hash)
    end
    users_index_view(users)
  end
end

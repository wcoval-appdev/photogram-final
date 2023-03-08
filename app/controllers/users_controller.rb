class UsersController < ApplicationController

def index

  matching_users = User.all

  @list_of_users = matching_users.order({ :username => :asc})

  render({:template => "users/index.html.erb"})
end

def show
  the_username = params.fetch("path_id")

  @the_user = User.where({ :username => the_username}).at(0)

  #@count_of_followers = @the_user.followrequests

  render({:template => "users/show.html.erb"})
end

end

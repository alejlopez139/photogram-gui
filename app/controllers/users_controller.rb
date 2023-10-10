class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    render({:template => "user_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where(:username => url_username)

    @the_user = matching_usernames.first

    render ({:template => "user_templates/show"})
  end

  def create_user
    new_user = User.new
    new_user.username = params.fetch("query_username")
    new_user.save
    username = new_user.username
    redirect_to("/users/#{username}")
  end

  def update
    the_username = params.fetch("path_id")
    matching_user = User.where( :username => the_username )
    the_user = matching_user.first
    the_user.username = params.fetch("the_username")
    the_user.save

    new_username = the_user.username

    redirect_to("/users/#{new_username}")

  end
    
end

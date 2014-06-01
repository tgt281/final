class UsersController < ApplicationController

  def create
    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil
      User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"])

      redirect_to "/users"
    else
      @message = "Another chocolate lover has that username! Try again."
      render "new"
    end
  end

  def update
    the_user = User.find_by(params["username"])
    the_user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"])
    redirect_to '/users/#{the_user["username"]}'
  end

#def update
#@ variables live only as lon as the request and can only be made in the controller
# 5 does not equal "5", one is an integer and the other is a string. To convert, "5".to_i

end

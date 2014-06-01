class SessionsController < ApplicationController

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["username"] = the_user["username"]
        redirect_to "/users/#{the_user["username"]}", :notice => "Hi there #{the_user["username"]}!"
      else
        logger.debug "Hi there!"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

  def logout
    cookies.delete("username")
    redirect_to "/", :notice => "Thanks for stopping by!"
  end

end

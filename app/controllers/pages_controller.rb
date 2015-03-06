class PagesController < ApplicationController
  def home
    @users = User.all
    @cats = Cat.all
    @done = Todos.where(finished:true)
    @notDone = Todos.where(finished:false)
  end
end

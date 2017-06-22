class HomeController < ApplicationController
  def index
    
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
    
    @posts=Post.all
    @comments=Comment.all
    
  end
  
  #Create
  def p_create
    
    @post=Post.new
    @post.content=params[:content]
    @post.image=params[:image]
    @post.save
    redirect_to '/index'
    
  end
  
  def c_create
    @comment=Comment.new
    @comment.content=params[:comment]
    @comment.post_id=params[:post_id]
    @comment.save
    redirect_to '/index'
  end
  
  
  #Read
  def list
  end
  
  #Update
  
  #Delete
  
end

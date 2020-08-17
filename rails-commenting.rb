# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) We are creating a baisc API for blog posts. This class is the controller class that has all the CRUD methods
class BlogPostsController < ApplicationController
  def index
    # 2) This is declaring an instance variable which will contain all of the blog posts
    @posts = BlogPost.all
  end

  def show
    # 3) This is declaring an indstance variable that will contain only one blog post pending on the id passed in the url
    @post = BlogPost.find(params[:id])
  end

  # 4) Declaration of new method that will be used when the user is going to go to a new form to create a new blog post. This is all you need for a new method in Rails. 
  def new
  end

  def edit
  end

  def create
    # 5) This is a declaration of an instance variable that will store a newly created blog with the specified instance varibles. The diffence betwene #new and #create is that #new is for sending the user to a form to create a new post, while the #create method is for posting the newly created blog post to the database. 
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # 6) If destroying the specified blog post was not accomplished, then the user will be directed to page of the single blog post.
      redirect_to blog_post_path(@post)
    end
  end

  # 7) A private declaration so that anything below it is available only to the class itself. It cannot be called upon outside of the class. 
  private
  def blog_post_params
    # 8) Only the title and content attributes of the blog post object are available to the user to set.
    params.permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9) This is a class to give the spefoco attributes to BlogPost objects
class BlogPost < ApplicationRecord
  # 10) Defines the relationship with a separate class, Comments.
  has_many :comments
end

class BlogPostController < ApplicationController
  def show
    Current.user = User.find_by_id(params[:user_id])

    @blog = BlogPost.find_by_id(params[:blog_post_id])

    render html: "<h1>Blog post #{@blog.title} (#{@blog.id}, #{@blog.user.id}) is allowed for user #{Current.user.name} (#{Current.user.id})</h1>"
  end
end

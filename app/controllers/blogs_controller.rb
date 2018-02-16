class BlogsController < ApplicationController

	def index
		 @blogs = Blog.all
	end

	def new 
		@blog = Blog.new
	end


	def create
	blog = Blog.new(blog_parmas)
	blog.save
	redirect_to 'blogs/'
	end
	private

	def blog_parmas
		params.require(:blog).permit(:title, :body, :category)
	end
end




class PostsController < ApplicationController
  def index
      @posts = Posts.all
  end

  def new
     @post = current_user.post.build
  end

  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to @post, notice: 'Post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @post.destroy
     respond_to do |format|
       format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
       format.json { head :no_content }
     end
  end

  def show
    @posts = Posts.all
  end


  private

  def post_params
     params.require(:post).permit(:user_id, :text, :image_id)
  end

end

class ImagesController < ApplicationController
  def index
      @images = Image.all
      render :json => @images
  end

  def new
     @image = current_user.image.build
  end

  def create
    @image = current_user.images.build(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    @image = Image.find(params[:id])

    respond_to do |format|
        if @image.update(image_params)
          format.html { redirect_to @image, notice: 'Image was successfully updated.' }
          format.json { render :show, status: :ok, location: @image }
        else
          format.html { render :edit }
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @image.destroy
     respond_to do |format|
       format.html { redirect_to posts_url, notice: 'Image was successfully destroyed.' }
       format.json { head :no_content }
     end
  end

  def show
    @images = Image.all
  end


  private

  def post_params
     params.require(:image).permit(:user_id)
  end
end

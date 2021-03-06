class PostsController < ApplicationController
  require 'RMagick'
  require 'libreconv'
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.search(params[:search]).sort(params[:sort]).all.page(params[:page]).per(12)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.includes(:user).find(params[:id])
    @comments = @post.comments.includes(:user).all
    @comment  = @post.comments.build(user_id: current_user.id) if current_user
    @likes_count = Like.where(post_id: @post.id).count
    # 添付ファイルがある場合のみpdf_urlを設定する処理
    if @post.file?
      @pdf_url = @post.file.url+".pdf"
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        # pdf以外のファイルをpdfファイルへ変換して保存する処理
        if @post.file?
          unless File.extname(@post.file.path).downcase==".pdf"
            Libreconv.convert(@post.file.path, @post.file.path+".pdf")
            pdf_path = @post.file.path+".pdf"
            #変換されたpdfファイルを読み込んで１ページ目のみjpgに変換する処理
            image = Magick::Image.read(pdf_path)
            image[0].write(@post.file.path + ".jpg")
          else
            pdf_path = @post.file.path
            # pdfファイルを読み込んで１ページ目のみjpgに変換する処理
            image = Magick::Image.read(pdf_path)
            image[0].write(@post.file.path + ".jpg")
          end
        end
        format.html { redirect_to @post, notice: 'アップロードが完了しました。' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    # pdf以外のファイルの場合は変換したpdf・jpgファイルを削除する処理
    unless post_params[:file]==nil
      if @post.file?
        unless File.extname(@post.file.path).downcase==".pdf"
          @pdf_url = @post.file.path+".pdf"
          @jpg_url = @post.file.path+".jpg"
          File.delete(@pdf_url)
          File.delete(@jpg_url)
        else
      # pdfファイルの場合は変換したjpgファイルのみを削除する処理
          @jpg_url = @post.file.path+".jpg"
          File.delete(@jpg_url)
        end
      end
    end
    respond_to do |format|
      if @post.update(post_params)
        unless post_params[:file]==nil
          if @post.file?
            unless File.extname(@post.file.path).downcase==".pdf"
              Libreconv.convert(@post.file.path, @post.file.path+".pdf")
              @pdf_url = @post.file.url+".pdf"
              pdf_path = @post.file.path+".pdf"
              #変換されたpdfファイルを読み込んで１ページ目のみjpgに変換する処理
              image = Magick::Image.read(pdf_path)
              image[0].write(@post.file.path + ".jpg")
            else
              pdf_path = @post.file.path
              # pdfファイルを読み込んで１ページ目のみjpgに変換する処理
              image = Magick::Image.read(pdf_path)
              image[0].write(@post.file.path + ".jpg")
            end
          end
        end
        format.html { redirect_to @post, notice: '投稿はアップデートされました。' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    if @post.file?
      # pdf以外のファイルの場合は変換したpdf・jpgファイルを削除する処理
      unless File.extname(@post.file.path).downcase==".pdf"
        @pdf_url = @post.file.path+".pdf"
        @jpg_url = @post.file.path+".jpg"
        File.delete(@pdf_url)
        File.delete(@jpg_url)
      # pdfファイルの場合は変換したjpgファイルのみを削除する処理
      else
        @jpg_url = @post.file.path+".jpg"
        File.delete(@jpg_url)
      end
    end
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: '投稿は削除されました。' }
      format.json { head :no_content }
    end
  end

  def get_subcategory
    render partial: 'select_subcategory', locals: {category_id: params[:category_id]}
  end

  def get_sub2category
    render partial: 'select_sub2category', locals: {subcategory_id: params[:subcategory_id]}
  end

  def get_sub3category
    render partial: 'select_sub3category', locals: {sub2category_id: params[:sub2category_id]}
  end

  def get_sub4category
    render partial: 'select_sub4category', locals: {sub3category_id: params[:sub3category_id]}
  end

  def get_sub5category
    render partial: 'select_sub5category', locals: {sub4category_id: params[:sub4category_id]}
  end

  def get_sub6category
    render partial: 'select_sub6category', locals: {sub5category_id: params[:sub5category_id]}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :category_id, :user_id, :filetype_id, :subcategory_id, :sub2category_id, :sub3category_id, :sub4category_id, :sub5category_id, :sub6category_id, :file, :file_cache, :remove_file)
    end
end

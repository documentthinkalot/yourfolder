class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  # リクエスト表示時は左メニューを変えるため、別途レイアウトを定義
  layout "requests_layout"

  # GET /requests
  # GET /requests.json
  def index
    # Request.all.reject{|e| e.responses.exists?}
    @requests = Request.all.sort(params[:sort])
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @responses = @request.responses
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to requests_category_path(id: @request.category_id), notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:body, :user_id, :title, :category_id, :subcategory_id, :sub2category_id, :sub3category_id, :sub4category_id, :sub5category_id, :sub6category_id)
    end
end

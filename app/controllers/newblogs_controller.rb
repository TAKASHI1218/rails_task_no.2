class NewblogsController < ApplicationController

  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @newblogs=Newblog.all
  end


  def new
    @newblog=Newblog.new
  end

  def show
    # @newblog = Newblog.find(params[:id])
  end

  def create
    @newblog = Newblog.new(blog_params)
    if params[:back]
      render :new
    else
      if @newblog.save
        redirect_to newblogs_path, notice: "ブログを作成しました！"
      else
        render 'new'
      end
    end
end

  def edit
    # @newblog = Newblog.find(params[:id])
  end

  def update
    # @newblog = Newblog.find(params[:id])
    if @newblog.update(blog_params)
      redirect_to newblogs_path, notice: "ブログを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @newblog.destroy
    redirect_to newblogs_path, notice:"ブログを削除しました。"
  end

  def confirm
    @newblog = Newblog.new(blog_params)
    render :new if@newblog.invalid?
  end




  private

  def blog_params
    params.require(:newblog).permit(:title, :content)
  end

  def set_blog
    @newblog=Newblog.find(params[:id])
  end


end

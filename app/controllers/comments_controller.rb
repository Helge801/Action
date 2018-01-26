class CommentsController < ApplicationController
  before_action :get_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
    @comment = Comment.new
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  private

  def get_comment
    @comment = Comment.find(params[:id])
  end

end

class TreeBranchesController < ApplicationController

  def home

  end

  def up
    @new_branch = TreeBranch.new(sentence: params[:up])
    # @trunk = TreeBranch.find()
    redirect_to root_path
  end

  def new
    @tree_branch = TreeBranch.new
  end

  def show
    @tree_branch = TreeBranch.find(params[:id])
  end

  def create


  end


end

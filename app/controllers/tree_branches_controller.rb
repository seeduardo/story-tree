class TreeBranchesController < ApplicationController

  def home
    @trunk = TreeBranch.find(1)
    redirect_to @trunk
  end

  def show
    @trunk = TreeBranch.find(params[:id])

    @up = TreeBranch.find(@trunk.up_id) if @trunk.up_id
    @left = TreeBranch.find(@trunk.left_id) if @trunk.left_id
    @right = TreeBranch.find(@trunk.right_id) if @trunk.right_id
    @down = TreeBranch.find(@trunk.down_id) if @trunk.down_id
  end

  def up
    @up = TreeBranch.create(sentence: params[:up])
    @trunk = TreeBranch.find(params[:id])
    @trunk.update(up_id: @up.id)
    redirect_to @trunk
  end

  def left
    session[:left] = params[:left]
    @new_branch = TreeBranch.new(sentence: params[:left])
    # @trunk = TreeBranch.find()
    redirect_to root_path
  end

  def right
    session[:right] = params[:right]
    @new_branch = TreeBranch.new(sentence: params[:right])
    # @trunk = TreeBranch.find()
    redirect_to root_path
  end

  def down
    session[:down] = params[:down]
    @new_branch = TreeBranch.new(sentence: params[:down])
    # @trunk = TreeBranch.find()
    redirect_to root_path
  end

end

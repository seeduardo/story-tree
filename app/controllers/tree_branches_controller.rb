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
    @left = TreeBranch.create(sentence: params[:left])
    @trunk = TreeBranch.find(params[:id])
    @trunk.update(left_id: @left.id)
    redirect_to @trunk
  end

  def right
    @right = TreeBranch.create(sentence: params[:right])
    @trunk = TreeBranch.find(params[:id])
    @trunk.update(right_id: @right.id)
    redirect_to @trunk
  end

  def down
    @down = TreeBranch.create(sentence: params[:down])
    @trunk = TreeBranch.find(params[:id])
    @trunk.update(down_id: @down.id)
    redirect_to @trunk
  end

end

class CommentsController < ApplicationController
require_role [:admin, :guest]
before_filter :get_pivot
  # GET /comments
  # GET /comments.xml
  def index
    @comments = @pivot.comments

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = @pivot.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = @pivot.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
    @comment.pivot = @pivot

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(pivot_comments_path(:pivot_id => @pivot.id), :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = @pivot.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(pivot_comments_path(:pivot_id => @pivot.id), :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = @pivot.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(pivot_comments_path(:pivot_id => @pivot.id)) }
      format.xml  { head :ok }
    end
  end
def get_pivot
			@pivot = Pivot.find_by_id(params[:pivot_id])
end 
end

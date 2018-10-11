class GroupsController < ApplicationController
  def index
    session[:group_id] = nil
    @groups = Group.all
  end

  def show
    @messages = Message.all
    if params[:id] == nil
      flash.now[:danger] = 'グループが削除されています'
      redirect_to "http://localhost:3000/groups/index"
    else
      session[:group_id] = params[:id]
      @group = Group.find(params[:id])
      @events = Event.where(group_id: params[:id])
      return redirect_to groups_path if @events.nil?
    end
  end


  def new
   @group = Group.new
  end

  def create
   @group = Group.new(group_params)

   if @group.save
    redirect_to groups_path, success: 'グループの登録が完了しました'
   else
    flash.now[:danger] = "グループの登録に失敗しました"
   end
  end

   private
   def group_params
    params.require(:group).permit(:id, :group_name,:group_type, :group_image, :group_comment)
   end

end

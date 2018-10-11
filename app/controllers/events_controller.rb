class EventsController < ApplicationController
  def index
    if params[:group_id] == nil
      flash.now[:danger] = 'イベントが削除されています'
      redirect_to "http://localhost:3000/groups/index"
    else
      @gid = params[:group_id]
      @events = Event.where(group_id: params[:group_id])
      return redirect_to groups_path if @events.nil?
    end
  end

    def show
      @event = Event.find(params[:id])
    end

    def new
      @events = Event.new
     end

    def create
     @event = Event.new(id: params[:event][:id],group_id: session[:group_id],event_name: params[:event][:event_name],event_script: params[:event][:event_script],event_image: params[:event][:event_image],event_day: params[:event][:event_day],event_place: params[:event][:event_place],limit_num_people: params[:event][:limit_num_people],limit_date: params[:event][:limit_date])


     if @event.save
      redirect_to events_path, success: 'イベントの登録が完了しました'
     else
      flash.now[:danger] = "イベントの登録に失敗しました"
     end
   end

     private
     def event_params
      params.require(:event).permit(:id,
                                    :event_name,
                                    :event_script,
                                    :event_image,
                                    :event_day,
                                    :event_place,
                                    :limit_num_people,
                                    :limit_date)
      end
end

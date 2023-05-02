class OsusumesController < ApplicationController
# 追加箇所
before_action :authenticate_user!, only: [:new, :create]
# ここまで
#追加箇所
def index
  @osusumes = Osusume.all
  if params[:tag_ids]
      @osusumes = []
      params[:tag_ids].each do |key, value|      
          @osusumes += Tag.find_by(name: key).osusumes if value == "1"
      end
      @osusumes.uniq!
  end
  #以下を追記
  @osusumes = Kaminari.paginate_array(@osusumes).page(params[:page]).per(3)
  #ここまで
end
    #追加箇所
          def new
            @osusume = Osusume.new
          end
        
          def create
            osusume = Osusume.new(osusume_params)
            osusume.user_id = current_user.id  #追記
            if osusume.save
              redirect_to :action => "index"
            else
              redirect_to :action => "new"
            end
          end
          # 追記ここから
  def show
    @osusumes = Osusume.find(params[:id])
    @comments = @osusumes.comments
        @comment = Comment.new
  end
  # ここまで
  # 追記ここから
  def edit
    @osusumes = Osusume.find(params[:id])
  end
  # ここまで
  # 追記ここから
  def update
    osusume = Osusume.find(params[:id])
    if osusume.update(osusume_params)
      redirect_to :action => "show", :id => osusume.id
    else
      redirect_to :action => "new"
    end
  end
  # ここまで
  # 追加ここから
  def destroy
    osusume = Osusume.find(params[:id])
    osusume.destroy
    redirect_to action: :index
  end
  # ここまで
  def detail
    
  end
        
          private
          def osusume_params
            params.require(:osusume).permit(:name, :title, :title2, :title3, :title4, :title5, :title6, :title7, :title8, :title9, :title10, :about, :image, tag_ids: [])
          end
        #ここまで
        
        
        end

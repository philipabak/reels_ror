class ClipsController < ApplicationController
    def index
        @clips = Clip.all
    end
  
    # Add other CRUD actions as needed
   
    private
   
    def clip_params
        params.require(:clip).permit(:name, :video_standard, :video_definition, :start_time, :end_time, :description)
    end
end

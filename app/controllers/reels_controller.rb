class ReelsController < ApplicationController
    before_action :set_reel, only: [:show, :edit, :update, :destroy]
    
    def index
        @reels = Reel.all
    end
  
    def show
        @added_clips = Clip.where(id: conv_arr(@reel.clip_list)) 
    end
  
    def new
        @reel = Reel.new
        @clips = Clip.all
    end

    def create
        @reel = Reel.new(reel_params)

        @reel.total_play_time = calc_total_play_time(reel_params[:video_standard], params[:clip_times])
            
        if @reel.save
            redirect_to @reel, notice: 'Reel was successfully created.'
        else
            render :new
        end
    end
    
    def edit
        @added_clips = Clip.where(id: conv_arr(@reel.clip_list)) 
        @rest_clips = Clip.where.not(id: conv_arr(@reel.clip_list)) 
    end 

    def update
        @reel.total_play_time = calc_total_play_time(reel_params[:video_standard], params[:clip_times])

        if @reel.update(reel_params)
            redirect_to @reel, notice: 'Reel was successfully updated.'
        else
            render :edit
        end
    end
    
    def destroy
        @reel.destroy
        redirect_to reels_url, notice: 'Reel was successfully destroyed.'
    end
    
    private

    def set_reel
        @reel = Reel.find(params[:id])
    end

    def conv_arr(str)
        return str.split(',').map(&:to_i)
    end

    def calc_total_play_time(video_standard, clip_times)
        fps_per_secs = (video_standard === 'PAL') ? 1.0/25 : 1.0/30
        clip_times = clip_times.split(',').map(&:to_s)
        total_secs = 0.0
        clip_times.each do |clip_time|
            time_array = clip_time.split(':').map(&:to_i)
            time_secs = time_array[0] * 3600 + time_array[1] * 60 + time_array[2] + time_array[3] * fps_per_secs
            total_secs += time_secs
        end

        hrs = total_secs.to_i / (60 * 60)
        mins = (total_secs.to_i / 60) % 60
        secs = total_secs.to_i % 60
        f_secs = total_secs % 1
        ffs = (f_secs / fps_per_secs).round

        return "#{sprintf("%02d", hrs)}:#{sprintf("%02d", mins)}:#{sprintf("%02d", secs)}:#{sprintf("%02d", ffs)}"
    end
    
    def reel_params
        params.require(:reel).permit(:name, :video_standard, :video_definition, :clip_list)
    end
end
  
class PlateController < ApplicationController
  def index
  end

  def new
    @plate = Plate.new
  end


def create
  @plate = Plate.new(plate_params)
  if @plate.save
    redirect_to root_path
    flash[:notice] = "投稿を送信しました。"
  else
    redirect_to new_plate_path
    flash[:alert] = "投稿に失敗しました。"
  end
end

private
  def plate_params
    params.require(:plate).permit(:text).merge(user_id: current_user.id)
  end

end


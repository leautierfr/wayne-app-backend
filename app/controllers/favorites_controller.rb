class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      song_id: params[:song_id],
    )
    favorite.save
    render json: favorite.as_json
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: { message: "Unfavorited" }
  end
end

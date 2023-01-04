class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def create
    song = Song.create!(
      name: params[:name],
      song_url: params[:song_url],
      album: params[:album],
      year: params[:year],
    )
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def update
    song = Song.find_by(id: params[:id])
    song.update(
      name: params[:name] || song.name,
      album: params[:album] || song.album,
      year: params[:year] || song.year,
      song_url: params[:song_url] || song.song_url,
    )
    render json: song.as_json
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { message: "Song destroyed successfully" }
  end
end

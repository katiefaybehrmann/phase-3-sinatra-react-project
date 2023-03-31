class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/genres" do
    genres = Genre.all
    genres.to_json(include: :records)
  end

  # get "/records" do 
  #   records = Record.all
  #   records.to_json
  # end

  post '/genres' do 
    genre = Genre.create(
      name: params[:name],
      description: params[:description]
    )
    genre.to_json
  end

  post '/genres/:genre_id/records' do 
    genre=Genre.find(params[:genre_id])
    record = genre.records.create(
      artist: params[:artist],
      release_date: params[:release_date],
      image_url: params[:image_url],
      listened: params[:listened],
      rating: params[:rating]
    )
    record.to_json
  end

  patch '/genres/:genre_id/records/:id' do
    record = Record.find(params[:id])
    record.update(
      artist: params[:artist],
      release_date: params[:release_date],
      image_url: params[:image_url],
      listened: params[:listened],
      rating: params[:rating]
    )
    record.to_json
  end

  delete '/genres/:genre_id/records/:id' do 
    record = Record.find(params[:id])
    record.destroy
    record.to_json
  end

end

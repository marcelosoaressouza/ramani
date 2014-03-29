json.array!(@entidades) do |entidade|
  json.extract! entidade, :id, :name, :description, :address, :city, :state, :country, :latitude, :longitude
  json.url entidade_url(entidade, format: :json)
end

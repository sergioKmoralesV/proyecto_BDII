json.array!(@textos) do |texto|
  json.extract! texto, :id, :ruta, :nombre
  json.url texto_url(texto, format: :json)
end

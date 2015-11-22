json.array!(@palabras) do |palabra|
  json.extract! palabra, :id, :text
  json.url palabra_url(palabra, format: :json)
end

json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id
  json.url estudiante_url(estudiante, format: :json)
end

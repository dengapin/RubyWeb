json.array!(@politecnicos) do |politecnico|
  json.extract! politecnico, :id, :nombre, :apellido, :materia
  json.url politecnico_url(politecnico, format: :json)
end

json.array!(@colaboradors) do |colaborador|
  json.extract! colaborador, :id, :nome, :hotel, :setor, :transporte, :data_envio, :data_confirma, :chave_entrega, :preimo
  json.url colaborador_url(colaborador, format: :json)
end

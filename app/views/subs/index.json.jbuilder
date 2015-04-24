json.array!(@subs) do |sub|
  json.extract! sub, :id, :name, :substo
  json.url sub_url(sub, format: :json)
end

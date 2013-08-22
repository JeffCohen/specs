json.array!(@items) do |item|
  json.extract! item, :title, :body, :category_id
  json.url item_url(item, format: :json)
end

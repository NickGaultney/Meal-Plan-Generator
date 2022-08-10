json.extract! ingredient, :id, :name, :price, :location, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)

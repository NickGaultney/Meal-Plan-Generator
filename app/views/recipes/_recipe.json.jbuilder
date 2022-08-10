json.extract! recipe, :id, :name, :instructions, :meal_type, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

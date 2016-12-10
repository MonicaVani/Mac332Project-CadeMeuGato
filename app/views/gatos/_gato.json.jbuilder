json.extract! gato, :id, :name, :gender, :race, :color, :photo, :description, :status, :castrate_at, :age, :created_at, :updated_at
json.url gato_url(gato, format: :json)
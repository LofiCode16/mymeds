json.extract! medic, :id, :rut, :name, :speciality, :created_at, :updated_at
json.url medic_url(medic, format: :json)

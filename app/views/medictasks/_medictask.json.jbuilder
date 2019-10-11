json.extract! medictask, :id, :title, :content, :date, :medic, :speciality, :done, :user_id, :created_at, :updated_at
json.url medictask_url(medictask, format: :json)

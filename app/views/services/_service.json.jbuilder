json.extract! service, :id, :name, :service_type, :hours, :description, :project_url, :client_id, :created_at, :updated_at
json.url service_url(service, format: :json)
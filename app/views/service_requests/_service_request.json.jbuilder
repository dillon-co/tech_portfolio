json.extract! service_request, :id, :client_id, :title, :description, :project_type, :created_at, :updated_at
json.url service_request_url(service_request, format: :json)
class PagesController < ApplicationController
  def home
  end

  def projects
  end

  def discussion
  end

  def about
  end

  def dashboard
    @requested_apps = ServiceRequest.where(project_type: "app_development").count
    @requested_websites = ServiceRequest.where(project_type: "web_development").count
    @requested_consulting = ServiceRequest.where(project_type: "consultation").count
  end

  def accept_project
    requested_service = ServiceRequest.find(params["requested_id"]).as_json
    requested_service.delete_if do |key, value|
       key == "id" || key == "created_at" || key == "updated_at"
    end
    s = Service.create(requested_service)
    redirect_to edit_service_path(s)
  end

  def decline_project
  end
end

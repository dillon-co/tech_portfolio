# == Schema Information
#
# Table name: service_requests
#
#  id           :integer          not null, primary key
#  client_id    :integer
#  title        :string
#  description  :string
#  project_type :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ServiceRequest < ApplicationRecord
  belongs_to :client

  enum project_type: {
    app_development: 0,
    web_development: 1,
    consultation: 2
  }
end

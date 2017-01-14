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
    "App Development" => 0,
    "Web Development" => 1,
    "Consultation" => 2
  }

  enum project_status: {
    "Pending" => 0,
    "In Review" => 1,
    "Accepted" => 2,
    "Declined" => 3,
  }
end

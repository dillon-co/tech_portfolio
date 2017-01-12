# == Schema Information
#
# Table name: services
#
#  id           :integer          not null, primary key
#  client_id    :integer
#  name         :string           not null
#  project_url  :string
#  description  :text
#  service_type :integer          not null
#  hours        :float            not null
#  recurring    :boolean          default("false")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Service < ApplicationRecord
  belongs_to :client

  enum project_type: {
    app_development: 0,
    web_development: 1,
    consultation: 2
  }
end

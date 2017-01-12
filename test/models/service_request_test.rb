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

require 'test_helper'

class ServiceRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

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

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

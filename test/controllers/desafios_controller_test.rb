# frozen_string_literal: true

require 'test_helper'

class challengersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get challengers_index_url
    assert_response :success
  end

  test 'should get desafio1' do
    get challengers_desafio1_url
    assert_response :success
  end
end

require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

	test "that /login route opens the login page" do
		get '/login'
		assert_response :success
	end

	test "that /logout route logs the user out" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register route opens the sign up page" do
		get '/register'
		assert_response :success
	end

	test "that a profile page works" do
		get '/jyripaavilainen'
		assert_response :success
	end
	
end

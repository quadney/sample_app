require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
  	get root_path
  	assert_template	'static_pages/home'
  	assert_select "a[href=?]", root_path, count: 2	# there are two  links with the root path
  	assert_select "a[href=?]", help_path
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", contact_path
  	# here rails automagically inserts the value of the path
  	# in place of the question mark, thereby checking for an HTML tag of the form
  	# <a href="/about">...</>
  end
end

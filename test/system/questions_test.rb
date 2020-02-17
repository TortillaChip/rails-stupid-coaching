# test/system/questions_test.rb
require 'application_system_test_case'
require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'form' # , action: '/answer'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test 'asking something should yield "Silly question from the coach"' do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'telling the coach you are going to work should make him shut up' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    take_screenshot
    assert_text 'Great!'
  end
end

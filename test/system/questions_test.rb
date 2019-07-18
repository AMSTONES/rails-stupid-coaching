require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "saying Hello yields a grumpy response from the coach" do
      visit ask_url
      fill_in "answer-given", with: "Hello"
      click_on "ask-btn"
      assert_text "I don't care, get dressed and go to work!"
  end


  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Ask Coach a question!"
  end
end

require "application_system_test_case"

class ComponentsTest < ApplicationSystemTestCase
  setup do
    @component = components(:one)
  end

  test "visiting the index" do
    visit components_url
    assert_selector "h1", text: "Components"
  end

  test "should create component" do
    visit components_url
    click_on "New component"

    fill_in "Ingredients", with: @component.ingredients_id
    fill_in "Quantity", with: @component.quantity
    fill_in "Recipe", with: @component.recipe_id
    fill_in "Unit", with: @component.unit
    click_on "Create Component"

    assert_text "Component was successfully created"
    click_on "Back"
  end

  test "should update Component" do
    visit component_url(@component)
    click_on "Edit this component", match: :first

    fill_in "Ingredients", with: @component.ingredients_id
    fill_in "Quantity", with: @component.quantity
    fill_in "Recipe", with: @component.recipe_id
    fill_in "Unit", with: @component.unit
    click_on "Update Component"

    assert_text "Component was successfully updated"
    click_on "Back"
  end

  test "should destroy Component" do
    visit component_url(@component)
    click_on "Destroy this component", match: :first

    assert_text "Component was successfully destroyed"
  end
end

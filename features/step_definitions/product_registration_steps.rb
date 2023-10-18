Given('that an employee registers a product in inventory') do
  home.add_product
end

When('he enters valid product information') do
  register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

Then('the product will be registred successfuly') do
  assert.check_registration
end

Given('there is already a registered product') do
  home.add_product
  register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

When('employee edits product information') do
  home.edit_product
  register_product.clear_all_fields
  register_product.register_product(
    DATABASE[:edit_product][:code],
    DATABASE[:edit_product][:description],
    DATABASE[:edit_product][:packing],
    DATABASE[:edit_product][:amount],
    DATABASE[:edit_product][:unit],
    DATABASE[:edit_product][:lot]
  )
end

Then('the product will be edited successfuly') do
  assert.check_edition
end

Given('there is a registered product') do
  home.add_product
  register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

When('employee delete this product information') do
  home.delete_product
  
end

Then('the product will be deleted successfuly') do
  assert.check_deletion
end

Given('have a product amount in inventory') do
  home.add_product
  register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot])
end

When('employee decrease this product amount {string}') do | string |
  home.decrease_item
  register_product.decrease_amount(string)
end

Then('product amount will be decreased {string} successfuly') do |string|
  assert.check_amount(string)
end



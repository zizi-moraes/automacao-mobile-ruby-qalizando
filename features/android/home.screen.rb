class HomeScreen < Utils
  
  def initialize
    @new_product = 'Button1'
    @edit_product = 'editar'
    @delete_product = 'deletar'
    @decrease = 'saida'
  end

  def add_product
    click_in_element(@new_product, 5)
  end

  def edit_product
    click_in_element(@edit_product, 5)
  end

  def delete_product
    click_in_element(@delete_product, 5)
    acceptAlert()
  end

  def decrease_item
    click_in_element(@decrease, 5)
  end
  
end
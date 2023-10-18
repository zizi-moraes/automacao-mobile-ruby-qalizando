class RegistrationAssert < Utils

  def initialize
    @code = 'txt_codigo'
    @description = 'txt_descricao'
    @packing = 'txt_unidade'
    @amount = 'txt_quantidade'
    @unit_value = 'txt_valunit'
    @lot = 'txt_lote'
    @product_registered = 'tabela_itens'
    @menu = 'Button3'
  end

  def check_registration
    wait_for_element(@product_registered, 5)
    expect(get_text(@code)).to eql '1234'
    expect(get_text(@description)).to eql 'Queijo'
    expect(get_text(@packing)).to eql '5'
    expect(get_text(@amount)).to eql '5'
    expect(get_text(@unit_value)).to eql '1,00'
    expect(get_text(@lot)).to eql '10'
  end

  def check_edition
    wait_for_element(@product_registered, 5)
    expect(get_text(@code)).to eql '5678'
    expect(get_text(@description)).to eql 'Presunto'
    expect(get_text(@packing)).to eql '2'
    expect(get_text(@amount)).to eql '2'
    expect(get_text(@unit_value)).to eql '1,00'
    expect(get_text(@lot)).to eql '10'
  end

  def check_deletion
    wait_for_element(@menu, 3)
    expect(element_is_present?(@product_registered)).to be_falsey
  end

  def check_amount(new_value)
    wait_for_element(@product_registered, 5)
    expect(get_text(@amount)).to eql new_value
    
  end

end
class RegistrationScreen < Utils
  
  def initialize
    @code_field = 'txt_codigo'
    @description_field = 'txt_descricao'
    @packing_field = 'txt_unidade'
    @amount_field = 'txt_quantidade'
    @unit_field = 'txt_valunit'
    @lot_field = 'txt_lote'
    @save_button = 'btn_gravar_assunto'
    @decrease_field = 'txt_qtdsaida'
    @save_decrease = 'btn_salvar'
  end

  def register_product(code, description, packing, amount, unit, lot)
    type_text(@code_field, code, 1)
    type_text(@description_field, description, 1)
    type_text(@packing_field, packing, 1)
    type_text(@amount_field, amount, 1)
    type_text(@unit_field, unit, 1)
    type_text(@lot_field, lot, 1)
    click_in_element(@save_button, 1)
  end

  def clear_all_fields
    clear_fields(@code_field)
    clear_fields(@description_field)
    clear_fields(@packing_field)
    clear_fields(@amount_field)
    clear_fields(@unit_field)
    clear_fields(@lot_field)
  end

  def decrease_amount(value)
    type_text(@decrease_field, value, 5)
    click_in_element(@save_decrease, 5)
    sleep 2
  end

end

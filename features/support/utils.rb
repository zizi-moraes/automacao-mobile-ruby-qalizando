class Utils
  
  def wait_for_element(element, timeout)
    wait = Selenium::WebDriver::Wait.new timeout: timeout
    wait.until { find_element(id: element).displayed? }
  end

  def click_in_element(element, timeout)
    wait_for_element(element, timeout)
    find_element(id: element).click
  end

  def type_text(element, value, timeout)
    wait_for_element(element, timeout)
    find_element(:id, element).send_keys(value)
  end

  def get_text(element)
    find_element(id: element).text
  end

  def clear_fields(id)
    @driver.find_element(id: id).clear
  end

  def acceptAlert
    @driver.switch_to.alert.accept()
  end

  def element_is_present?(element)
    if(find_elements(:id, element).size > 0)
      return true
    else
      return false
    end
  end

  
end
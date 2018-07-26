
Dado(/^que estou na página inicial do automationpractice$/) do
    @home_page.load
end
  
Dado(/^que clico no botão de login$/) do
    wait_element_visible(".login")
    @home_page.click_button_sign_in
end
  
Dado(/^que acesso clico no botão pesquisar e seleciono um produto$/) do
    wait_element_visible("#search_query_top")    
    @home_page.set_product_search
    @home_page.click_button_search
end
  
Dado(/^adiciono o produto no carrinho$/) do
    @car_page.click_first_result
    @car_page.save_values
    wait_element_visible("#add_to_cart")
    @car_page.click_add_car
    wait_element_visible(".button-medium")
    @car_page.click_btn_checkout
end
 
Dado(/^valido os dados do produto no carrinho$/) do
     wait_element_visible(".button-medium")
     @car_page.validate_product_car
     @shopping_page.click_btn_proceed_checkout
end
    
Dado(/^realizo o cadastro de clientes$/) do
    wait_element_visible("#email_create")    
    @authent_page.set_Email
    @authent_page.click_button_create_account
    wait_element_visible("#uniform-id_gender2")        
    @create_page.complete_registration
    @create_page.click_button_register      
end

Dado(/^valido o endereço e o valor da compra$/) do
    wait_element_visible("#address_delivery")            
    @addresses_page.validate_address
    @addresses_page.click_btn_proceed_checkout
    wait_element_visible("#uniform-cgv")
    @shipping_page.check_term
    @shipping_page.click_btn_proceed_checkout
end

Quando(/^seleciono o meio de pagamento$/) do
    wait_element_visible(".bankwire")
    @paymente_page.click_btn_pay_by_bank_wire
end

Então(/^finalizo o compra no site$/) do
    wait_element_visible(".button-medium")
    @order_summary_page.click_btn_confirm_my_order
    expect(@order_summary_page.text_final_page.visible?).to eq true
end

  
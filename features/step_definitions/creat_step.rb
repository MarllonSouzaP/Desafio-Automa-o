
Dado(/^que estou na página inicial do automationpractice$/) do
    @home_page.load
    sleep 5
end
  
Dado(/^que clico no botão de login$/) do
    @home_page.click_button_sign_in
end
  
Dado(/^que acesso clico no botão pesquisar e seleciono um produto$/) do
    @home_page.set_product_search
    @home_page.click_button_search
end
  
Dado(/^adiciono o produto no carrinho$/) do
    @car_page.click_first_result
    sleep 2
    @car_page.save_values
    @car_page.click_add_car
    sleep 2
    @car_page.click_btn_checkout
end
 
Dado(/^valido os dados do produto no carrinho$/) do
    sleep 2
     @car_page.validate_product_car
     @shopping_page.click_btn_proceed_checkout
end
    
Dado(/^realizo o cadastro de clientes$/) do
    sleep 2
    @authent_page.set_Email
    @authent_page.click_button_create_account
    sleep 2
    @create_page.complete_registration
    @create_page.click_button_register      
end

Dado(/^valido o endereço e o valor da compra$/) do 
    @addresses_page.validate_address
    @addresses_page.click_btn_proceed_checkout
    sleep 2
    @shipping_page.check_term
    @shipping_page.click_btn_proceed_checkout
end

Quando(/^seleciono o meio de pagamento$/) do
    sleep 2
    @paymente_page.click_btn_pay_by_bank_wire
end

Então(/^finalizo o compra no site$/) do
    sleep 2
    @order_summary_page.click_btn_confirm_my_order
    sleep 2
    expect(@order_summary_page.text_final_page.visible?).to eq true
end

  
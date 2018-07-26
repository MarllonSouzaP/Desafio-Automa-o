# encoding: utf-8
include RSpec::Matchers
require 'rspec'

    class Shopping < SitePrism::Page

          element :text_total_prodct, '#total_product'
          element :input_quantidade, '.cart_quantity_input'
          element :btn_checkout, '.button-medium'            

          def validate_product   
              aggregate_failures do
              expect($valor_produto).to eql find(:css, '#total_product').text
              expect($quantidade_produto).to eql find(:css, '.cart_quantity_input').value
              end
          end     

          def click_btn_proceed_checkout
              self.btn_checkout.click
          end 

    end
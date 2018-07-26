
# encoding: utf-8

    class Car < SitePrism::Page

          element :btn_add_car, '#add_to_cart'
          element :btn_checkout, '.button-medium'            
            
          def click_first_result                
              find(:xpath, '//*[@id="best-sellers_block_right"]/div/ul/li[1]/a/img').click
          end    

          def click_add_car
              self.btn_add_car.click
          end      
            
          def save_values
              $valor_produto = find(:css,'#our_price_display').text
              $quantidade_produto = find(:css,'#quantity_wanted').value
          end  
            
          def click_btn_checkout
              self.btn_checkout.click
          end 

          def validate_product_car
            aggregate_failures do
                expect($valor_produto).to eql find(:css, '#total_product').text
                expect($quantidade_produto).to eql find(:css, '.cart_quantity_input').value
            end
          end  
    end


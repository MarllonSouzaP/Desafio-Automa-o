# encoding: utf-8

    class Shipping < SitePrism::Page

          element :btn_checkout, '.button-medium'
          element :check_terms_of_service, '#uniform-cgv'            

          def click_btn_proceed_checkout
              self.btn_checkout.click
          end 

          def check_term
              self.check_terms_of_service.click
          end      
    end
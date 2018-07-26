
# encoding: utf-8

    class Addresses < SitePrism::Page

          element :btn_checkout, '.button-medium'            

          def click_btn_proceed_checkout
              self.btn_checkout.click
          end 
    end
    
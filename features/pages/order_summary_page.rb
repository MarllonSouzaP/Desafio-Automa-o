# encoding: utf-8

    class OrderSummary < SitePrism::Page

          element :btn_checkout, '.button-medium'            
          element :text_final_page, '.page-heading'

          def click_btn_confirm_my_order
              self.btn_checkout.click
          end      
    end
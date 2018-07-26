# encoding: utf-8

    class PaymentPage < SitePrism::Page

          element :btn_pay_by_bank_whire, '.bankwire'

          def click_btn_pay_by_bank_wire
              self.btn_pay_by_bank_whire.click
          end     
    end
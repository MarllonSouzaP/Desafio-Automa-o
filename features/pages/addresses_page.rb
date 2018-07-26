
# encoding: utf-8

    class Addresses < SitePrism::Page

          element :btn_checkout, '.button-medium'            

          def click_btn_proceed_checkout
              self.btn_checkout.click
          end 

          def validate_address
            aggregate_failures do
                expect($street_name + " "+ $last_name).to eql find(:css, '#address_delivery .address_lastname').text
                expect($city + ", "+ $state+" "+$post_code).to eql find(:css, '#address_invoice .address_postcode').text
                expect($country).to eql find(:css, '#address_invoice .address_country_name').text
                expect($cell_phone).to eql find(:css, '#address_invoice .address_phone_mobile').text
            end
          end


    end
    
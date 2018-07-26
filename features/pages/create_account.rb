
# encoding: utf-8

    class CreateAccount < SitePrism::Page
          element :radio_button_Mrs, '#uniform-id_gender2'
          element :input_first_name, '#customer_firstname'
          element :input_last_name, '#customer_lastname'
          element :input_email, '#email'
          element :input_password, '#passwd'
          element :select_uniform_days, '#uniform-days'
          element :select_uniform_months, '#uniform-months'
          element :select_uniform_years, '#uniform-years'
          element :input_firstname, '#firstname'
          element :input_lastname, '#lastname'
          element :input_company, '#company'
          element :input_address1, '#address1'
          element :input_city, '#city'
          element :select_id_state, '#uniform-id_state'
          element :input_postcode, '#postcode'
          element :select_id_country, '#uniform-id_country'
          element :input_phone_mobile, '#phone_mobile'
          element :btn_register, '#submitAccount' 
          element :alias, '#alias'

            
          def complete_registration
              self.click_title_mrs
              self.set_first_name
              self.set_last_name
              self.set_email
              self.set_passWord
              self.select_day_of_birth
              self.select_uniform_months
              self.select_uniform_years
              self.set_street_name
              self.set_lat_namest
              self.set_address
              self.set_city
              self.setState
              self.set_zip_code
              self.select_country
              self.set_mobile_phone
              self.set_alias
          end    


          def click_title_mrs
              self.radio_button_Mrs.click
          end    
  
          def set_first_name
              self.input_first_name.set(Faker::Name.name) if has_input_first_name?
          end    

          def set_last_name
              self.input_last_name.set(Faker::Name.first_name) if has_input_last_name?
          end

          def set_email
              self.input_email.set(Faker::Internet.email) if has_input_email?
          end

          def set_passWord
              self.input_password.set(Faker::Number.number(6)) if has_input_password?
          end

          def select_day_of_birth
              self.select_uniform_days.select("10")  if has_select_uniform_days?           
          end

          def select_uniform_months
              if find(:css, '#uniform-months').find("option[value='3']").visible?
                 find(:css, '#uniform-months').find("option[value='3']").click
              end
          end

          def select_uniform_years
              if find(:css, '#uniform-years').find("option[value='1987']").visible? 
                 find(:css, '#uniform-years').find("option[value='1987']").click
              end
          end

          def set_street_name
              self.input_firstname.set(Faker::Address.street_name) if has_input_firstname?
              $street_name = self.input_firstname.value
          end

          def set_lat_namest
              self.input_lastname.set(Faker::Address.city_suffix) if has_input_lastname?
              $last_name = self.input_lastname.value              
          end

          def set_address
              self.input_address1.set(Faker::Address.street_suffix) if has_input_address1?
              $address = self.input_address1.value                            
          end
            
          def set_city
              self.input_city.set(Faker::Address.city) if has_input_city?
              $city = self.input_city.value                                          
          end
         
          def setState 
              if find(:css, '#uniform-id_state').find("option[value='11']").visible?
                 find(:css, '#uniform-id_state').find("option[value='11']").click
                 $state = find(:css, '#uniform-id_state').find("option[value='11']").text
              end                
          end    
            
          def set_zip_code
              self.input_postcode.set("00000") if has_input_postcode?
              $post_code = self.input_postcode.value                                                        
          end

          def select_country 
              if find(:css, '#uniform-id_country').find("option[value='21']").visible?  
                 find(:css, '#uniform-id_country').find("option[value='21']").click
                 $country = find(:css, '#uniform-id_country').find("option[value='21']").text
                 
              end    
          end    

          def set_mobile_phone
              self.input_phone_mobile.set(Faker::PhoneNumber.cell_phone) if has_input_phone_mobile?
              $cell_phone = self.input_phone_mobile.value                                                                      
          end

          def set_alias
              self.alias.set(Faker::Address.state) if has_alias?
          end    

          def click_button_register
              self.btn_register.click
          end 
          
          def validar_endereco_entrega

          end  



    end





           
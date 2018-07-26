
# encoding: utf-8

    class Authentication < SitePrism::Page
            
          set_url CONFIG['tela_inicial']
          element :input_email, '#email_create'
          element :btn_create_account, '#SubmitCreate'
           
          def set_Email
              self.input_email.set(Faker::Internet.email)
          end

          def click_button_create_account
              self.btn_create_account.click
          end    
    end






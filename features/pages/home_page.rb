# encoding: utf-8

    class Home < SitePrism::Page

          set_url CONFIG['url']
          element :btn_login, '.login'
          element :btn_search, '.button-search'
          element :input_search, '#search_query_top'


          def click_button_sign_in
              self.btn_login.click
          end   
        
          def click_button_search
              self.btn_search.click
          end
        
          def set_product_search
              self.input_search.set("printed")
          end 
          
          def wait_element_visible(element)
            find(element, :visible => true, wait: 20)
          end   

    end
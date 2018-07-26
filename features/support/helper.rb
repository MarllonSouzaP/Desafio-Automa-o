require 'fileutils'

module Helper
    
        def wait_element_visible(element)
            find(element, :visible => true, wait: 30)
        end   
    
end

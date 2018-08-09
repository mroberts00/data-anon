module DataAnon
    module Strategy
        module Field  
            class RandomPostcode 
                def anonymize field
                    postcode = field.value
                    numbers = postcode.chars
                    numbers.map! {|i| i = rand(0..9)}
                    postcode_new = numbers.join
                end
            end
        end
    end
end
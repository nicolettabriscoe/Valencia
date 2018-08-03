class Quiz
    # def questions(score)
    #     if score >="1" && score <="10"
    #         return score
    #     # else
    #     #   passed_score = false
    #     #   while passed_score == false
           
    #     #   score = gets.strip
    #     #      if score >="1" && score <="10"
    #     #           return score
    #     #      end
    #     #   end
    #     end
    # end
    
    
    # sexism = questions(sexism)
    
    # lgbtq = questions(lgbtq)
    
    # bully = questions(bully)
    
    # environment = questions(environment)
    
    # racism = questions(racism)
    
    def initialize
        @highest_score_index = []
        @page_links = []
        @results = ["<a href=\"/sexism\">Sexism</a>", "<a href=\"/lgbtq\">LGBTQ</a>", "<a href=\"/bullying\">Bullying</a>", "<a href=\"/environmental\">Environment</a>", "<a href=\"/racism\">Racism</a>"]

     end
     
   
    def high_score(ptsarray)
        index = 0
        highest_score = 0
       
        ptsarray.each do |score|
            if score.to_i >= highest_score.to_i
                highest_score = score
                @highest_score_index << index
            end
            index += 1
        end
    end
    
   
    def links
        @highest_score_index.each do |high_index|
            @page_links << @results[high_index]
        end
        temp = ""
        curr = 0
        @page_links.each do |bob|
            if curr != @page_links.size-1
               temp += bob + ", " 
           else
               temp += bob
            end
            curr+=1
        end
        return temp
    end
    
    def play_quiz(ptsarray)
        high_score(ptsarray)
        links
    end  
        
        
    
end 
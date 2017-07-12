class Todo < ApplicationRecord

	has_many :items, dependent: :destroy

    validates_presence_of :title, :created_by
    Results1="Results"
    

    
    #def self.params()
  	# 	"hello worlds, india, america"
  	#end 

   def self.ody(title)
   			#logger.info "#{title[:title].inspect}----------------"
    	od1 = Odyssey.flesch_kincaid_re(title[:title], true)
    	od2 = Odyssey.Flesch_Kincaid_Gl(title[:title], true)
    	od3 = Odyssey.flesch_kincaid_re(title[:title], false)
    	od4 = Odyssey.Flesch_Kincaid_Gl(title[:title], false)
	    od5 = Odyssey.analyze_multi(title[:title], ['FleschKincaidRe', 'FleschKincaidGl'], true)
	    od6 = Odyssey.analyze_multi(title[:title], ['FleschKincaidRe', 'FleschKincaidGl'], false)

    	p Results1=>"{ {SCORE1:[ FleschKincaidRe => {#{od3}}],
    		  	FleschKincaidRe => #{od1}
    		 },	 
    		 {SCORE2:[ FleschKincaidGl => {#{od4}}],
    		 	FleschKincaidGl => #{od2}
    		 },



    		 { SCORE3:[ mix of both => #{od6}],
    		 	mix of both => #{od5} }	
 }"
        
    	
    end

end


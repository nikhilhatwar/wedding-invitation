
                     _.!._
                    /O*@*O\
                   <\@(_)@/>
          ,;,   .--;`     `;--.   ,
          O@O_ /   |d     b|   \ _hnn
          | `/ \   |       |   / \` |
          &&&&  :##;\     /;##;  &&&&
          |  \ / `##/|   |##'  \ /  |
          \   %%%%`</|   |#'`%%%%   /
           '._|_ \   |   |'  / _|_.'
             _/  /   \   \   \  \
            / (\(     '.  '-._&&&&
           (  ()##,    o'--.._`\-)
            '-():`##########'()()()
             /:::::/()`Y`()\:::::\
        jgs  \::::( () | () )::::/
              `"""`\().'.()/'"""`





#include "family.h"
#include "friends.h"
#include "wellwishers.h"



Ruchi Dhage   = Bride.new
Nikhil Hatwar = Groom.new

class Wedding < ActiveEngagement::Base

  def invite
    puts <<-INVITE
        Ruchi and Nikhil invite you to
        the their Wedding 

            Heather Maria Burke
                  to
            Dominic Thomas Hodgson

        On the xxth of October 20xx
        At the xxxx xxxx, Leeds

----------------------------------------------------------
                                
         ___            
        /___\          
     .---'-'---.     
    /___________\          
     |   |"|   |     
 ____|___|_|___|_____

        Ceremony Commences at 12:00
          Followed by a
        Wedding Breakfast & Evening Reception
    INVITE

    if self.internet_access?
        redirect_to 'http://heatheranddom.com/rsvp'
      else
        rsvp_to 'Mr + Mrs Burke, Address Here'
    end
  end

	def ceremony
		begin
			Ceremony.start
			heather.kissed_by(dom)
			Ceremony.sign_register(heather, dom)
			heather.surname! = "Hodgson"
			throw :bouquet
			Ceremony.end
		rescue AnyLawfulImpediment
			# This should never happen!
		end
	end
end

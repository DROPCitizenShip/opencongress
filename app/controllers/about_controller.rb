class AboutController < ApplicationController
#  caches_page :index, :blog, :resources, :congress, :howtouse, :rss, :feedback
  skip_before_filter :has_accepted_tos?
  skip_before_filter :store_location, :only => ["privacy_policy","terms_of_service"]

  
  def index
    @page_title = 'About Open Congress'
  end

  def blog
    @page_title = 'About OpenCongress Blog'
  end
  
  def resources
    @page_title = "General Overview / Information about Congress"
  end

  def congress
    @page_title = 'About Congress'
  end

  def howtouse
    @page_title = "How To Use Open Congress"
  end
  
  def code
    @page_title = 'OpenCongress for Developers'
  end
  
  def beta_feedback
    @page_title = "Feedback"
  end
  
  def rss
  	@page_title = "Use RSS to Easily Track Developments in Congress"
  end
  
  def political_notebooks
     @page_title = "About My Political Notebook"
  end

  def screencast
    @page_title = "Screencast"
  end

  def terms_of_service
     @page_title = "Terms of Service and Comment Policy"
  end                                                   
  
  def privacy_policy
     @page_title = "Privacy Policy"
  end

private                            


  def learn_from_controller(controller_name)
    text = render_to_string(:partial => "#{controller_name}/learn")
    process_bluecloth_text(text)
  end
end

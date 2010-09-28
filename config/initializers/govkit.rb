if defined? GovKit
  GovKit.configure do |config|
    # Get an API key for Sunlight's Open States project here:
    # http://services.sunlightlabs.com/accounts/register/
    config.openstates_apikey = 'YOUR_OPENSTATES_API_KEY'

    ##API key for Votesmart
    # http://votesmart.org/services_api.php
    config.votesmart_apikey = '10c52cf3cc135ff62dadb25c8873bd1e'

    # API key for NIMSP. Request one here:
    # http://www.followthemoney.org/membership/settings.phtml
    config.ftm_apikey = 'YOUR_FTM_API_KEY'

    # Api key for OpenCongress
    # http://www.opencongress.org/api
    config.opencongress_apikey = 'YOUR_OPENCONGRESS_API_KEY'
  end
end

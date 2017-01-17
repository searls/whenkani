require "net/http"
require "json"
require "whenkani/version"

class WhenKani
  def initialize(api_key)
    @api_key = api_key
  end

  def seconds_until_review
    uri = URI("https://www.wanikani.com/api/user/#{@api_key}/study-queue")
    response = JSON.parse(Net::HTTP.get(uri))
    raise response["error"]["message"] if response.has_key?("error")
    info = response["requested_information"]
    seconds = info["next_review_date"] - Time.new.to_i
    if info["reviews_available"] > 0 ||
        info["lessons_available"] > 0 ||
        seconds < 0
      0
    else
      seconds
    end
  end
end

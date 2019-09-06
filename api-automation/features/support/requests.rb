class Requests
    
    def get
        request = $base_url
        result = HTTParty.get(
            request,
            multipart: true,
            body: $variables.merge('appid' => $appid)
        )
        return result
    
    end

end
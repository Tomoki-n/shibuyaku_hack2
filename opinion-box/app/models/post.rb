class Post < ApplicationRecord
  #mount_uploader :image, ImageUploader
  require 'rexml/document'

  def convert_text(lang)
    puts lang
    if lang == '1'
      fix_lang = 'ja'
    elsif lang == '2'
      fix_lang = 'en'
    elsif lang == '3'
      fix_lang = 'zh-Hans'
    elsif lang == '4'
      fix_lang = 'ko'
    else
      fix_lang = 'ja'
    end

  

    host = 'https://api.microsofttranslator.com'
    path = '/V2/Http.svc/Translate'

    target = fix_lang
    text = main_text

    params = '?to=' + target + '&text=' + CGI.escape(text)
    uri = URI (host + path + params)

    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = key

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request (request)
    end

    xml = REXML::Document.new(response.body)
    puts xml.elements['string'].text
    return xml.elements['string'].text
  end
end

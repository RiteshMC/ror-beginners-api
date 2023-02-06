module ErrorResponse
  extend ActiveSupport::Concern

  def error_validation(causes = nil, message = nil, message_body = nil)
    @code = 400
    @url = request.url
    @message = 'Validation Error。'
    @message = message unless message.nil?
    @message_body = message_body unless message_body.nil?
    @cause = causes
    render template: 'response/error', status: :bad_request
  end

end
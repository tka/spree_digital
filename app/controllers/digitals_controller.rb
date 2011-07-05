class DigitalsController < Spree::BaseController

  ssl_required :show

  def show
    link = DigitalLink.find_by_secret(params[:secret])
    if link.present? and link.digital.attachment.present?
      attachment = link.digital.attachment
      if link.authorize!
        redirect_to attachment.authenticated_url
      end
    end
    render :unauthorized
  end
  
end

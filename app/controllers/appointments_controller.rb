class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.includes(:client, :professional).all.map do |a|
      {
        info: a.info,
        start_time: a.start_time,
        end_time: a.end_time,
        client: {
          display_name: a.client.display_name
        },
        professional: {
          business_name: a.professional.business_name
        }
      }
    end.to_json

    render json: appointments
  end
end

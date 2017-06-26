defmodule OtpVerification.Web.VerificationsView do
  @moduledoc false
  use OtpVerification.Web, :view
  alias OtpVerification.Web.VerificationsView

  def render("show.json", %{verification: verification}) do
    render_one(verification, VerificationsView, "verification.json",  as: :verification)
  end

  def render("verification.json", %{verification: verification}) do
    %{
      id: verification.id,
      phone_number: verification.phone_number,
      check_digit: verification.check_digit,
      status: verification.status,
      code: verification.code,
      code_expired_at: verification.code_expired_at,
      active: verification.active
     }
  end

  def render("phone.json", %{verified_phone: phone_number}) do
    %{
      phone_number: phone_number
     }
  end
end

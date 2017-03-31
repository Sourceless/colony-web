module ApplicationHelper
  def alert_class_for(flash_type)
    {
      'success' => "alert-success",
      'error'   => "alert-danger",
      'alert'   => "alert-warning",
      'notice'  => "alert-info"
    }[flash_type] || flash_type.to_s
  end

  def current_account
    current_user.account
  end

  def current_team
    current_user.team
  end
end

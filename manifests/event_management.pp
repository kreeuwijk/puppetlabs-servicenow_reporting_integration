# TODO: Properly document this class
class servicenow_reporting_integration::event_management (
  String[1] $instance,
  Optional[String[1]] $user                                           = undef,
  Optional[String[1]] $password                                       = undef,
  Optional[String[1]] $oauth_token                                    = undef,
  Optional[String[1]] $pe_console_url                                 = undef,
  String $servicenow_credentials_validation_table                     = 'em_event',
  Optional[Integer[0, 5]] $failures_event_severity                    = 3,
  Optional[Integer[0, 5]] $corrective_changes_event_severity          = 2,
  Optional[Integer[0, 5]] $intentional_changes_event_severity         = 1,
  Optional[Integer[0, 5]] $pending_corrective_changes_event_severity  = 2,
  Optional[Integer[0, 5]] $pending_intentional_changes_event_severity = 1,
) {
  class { 'servicenow_reporting_integration':
    operation_mode                             => 'event_management',
    instance                                   => $instance,
    user                                       => $user,
    password                                   => $password,
    oauth_token                                => $oauth_token,
    pe_console_url                             => $pe_console_url,
    servicenow_credentials_validation_table    => $servicenow_credentials_validation_table,
    failures_event_severity                    => $failures_event_severity,
    corrective_changes_event_severity          => $corrective_changes_event_severity,
    intentional_changes_event_severity         => $intentional_changes_event_severity,
    pending_corrective_changes_event_severity  => $pending_corrective_changes_event_severity,
    pending_intentional_changes_event_severity => $pending_intentional_changes_event_severity,
  }
}

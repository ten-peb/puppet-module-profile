# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::developer
class profile::developer {
  # TODO: move this off to its own module
  package{'build-essentials':
    ensure => latest
  }
}

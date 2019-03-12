Feature: List
  Display a list of gems for a project - along with the path to each gem folder

  Scenario: Display top-level help text
    When I run `gempaths`
    Then the output should contain "gempaths help [COMMAND]  # Describe available commands or one specific command"

  Scenario: Default output should be the GNU Make format
    When I run `gempaths list`
    Then the output should contain "gempath(bundler) := "

#  Scenario: GNU Make output
#    When I run `gempaths list --format=make`
#    Then the output should contain "gempath(bundler) := "

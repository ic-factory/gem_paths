Feature: List
  Display a list of gems for a project - along with the path to each gem folder

  Scenario: Display top-level help text
    When I run `gempaths`
    Then the output should contain "gempaths help [COMMAND]  # Describe available commands or one specific command"

  Scenario: Default output should be the GNU Make format
    When I run `gempaths list`
    Then the output should contain "gem-path-bundler := "

  Scenario: Specify make format
    When I run `gempaths list --format=make`
    Then the output should contain "export gem-path-bundler := "

  Scenario: Specify sh format
    When I run `gempaths list --format=sh`
    Then the output should contain "export gem_path_bundler="

  Scenario: Specify yaml format
    When I run `gempaths list --format=yaml`
    Then the output should contain "---\ngem:\n  path:\n    "

  Scenario: Specify json format
    When I run `gempaths list --format=json`
    Then the output should contain "{"
     

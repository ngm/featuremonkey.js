@base
Feature: Mark Todo Done

    In order to manage the things I need to do
    As a TodoMonkey
    I want to be able to mark todo items as done

Scenario: List with one item, mark as done
    Given King King's todolist contains
        | Label                        | Status   |
        | Climb empire state building  | Not Done |
    When King Kong marks the todo 'Climb empire state building' as done
    Then King Kong's todolist should contain
        | Label                        | Status   |
        | Climb empire state building  | Done     |

Scenario: List with multiple items, mark one as done
    Given King King's todolist contains
        | Label                        | Status   |
        | Climb empire state building  | Not Done |
        | Smash windows                | Not Done |
    When King Kong marks the todo 'Climb empire state building' as done
    Then King Kong's todolist should contain
        | Label                        | Status   |
        | Climb empire state building  | Done     |
        | Smash windows                | Not Done |

@base
Feature: Add Todo Item

    In order to keep track of the things I need to do
	As a TodoMonkey
	I want to be able to add todo items to my todo list

Scenario: Empty list, new todo
    Given King King's todolist is currently empty
    When King Kong adds the todo 'Climb empire state building'
    Then King Kong's todolist should contain
        | Label                        | Status   |
        | Climb empire state building  | Not Done |

Scenario: List with items, new todo
    Given King King's todolist contains
        | Label                        | Status   |
        | Climb empire state building  | Done     |
    When King Kong adds the todo 'Smash windows'
    Then King Kong's todolist should contain
        | Label                        | Status   |
        | Climb empire state building  | Done     |
        | Smash windows                | Not Done |

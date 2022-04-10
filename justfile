# When you invoke just it looks for file justfile in the current directory and upwards, so you can invoke it from any subdirectory of your project.
# i.e. cd ./molecule/ && just

test: init
  poetry run molecule test

converge: init
  poetry run molecule converge

destroy: init
  poetry run molecule destroy

verify: init
  poetry run molecule verify

init:
  poetry install

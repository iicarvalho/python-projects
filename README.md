# python-projects
Bash script to create python projects with virtualenv

## Prerequisites (installed):
- Git
- Python with virtualenv

## Execution
sh create_project arg1 [arg 2]

## Explanation
**Arg1** is the project name and **arg2** (optionally) is the path where the project will be created. You might to execute .sh just with one or two arguments to have a success execution. If you prefer to set a specific path to always create your project, just assign the path to project_path variable in script (it's my case :D). 

The created virtual environment will have the following form: **project_name\project_name-env\**.

## Activate in Windows
If you are using windows system, to activate environment it's necessary to run **project_path\project_path-env\Scripts\activate**. To deactivate, just run **deactivate**

# TO-DO
- Make possible to create activate.bat and deactivate.bat files (done, but commented)
- Execute this .bat files from vscode and activate/deactivate the created virtual env (not working)

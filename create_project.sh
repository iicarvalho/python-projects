#!/bin/sh

if [[ $# -eq 1 || $# -eq 2]]
then
    if [ $# -eq 1 ]
    then
        #arg 1
        project_name=$1
        project_path="PUT YOUR PROJECT PATH HERE !!!!!"
    else [ $# -eq 2 ]
        #arg 1
        project_name=$1
        #arg 2
        project_path=$2
    fi

    directory="$project_path\\$project_name"

    if [ -d "$directory" ]
    then
        echo "O projeto já existe. Tente criar um projeto com nome distinto."
    else
        echo "Criando para do projeto..."

        #navigate to folder
        cd $project_path

        #create project folder
        mkdir "$directory"

        #navigate to project folder
        cd "$project_name"

        #create env
        echo "Criando env..."
        python -m env $project_name-env
    fi
else
    echo "Número de argumentos incorretos."
fi

echo "Execução finalizada."

#FIX - did not activate/deactivate venv
# echo "Criando activate.bat para execução no VsCode.."
# echo "$project_name-env\Scripts\activate" > activate.bat
# echo "Criando deactivate.bat para execução no VsCode.."
# echo "deactivate" > deactivate.bat
#!/bin/bash 

read -p "Название парсера: " parsername

cp -R ./code ./parsers
mv ./parsers/code ./parsers/$parsername

cd ./parsers/$parsername
python3 -m venv venv
. ./venv/bin/activate
pip install -r ../requirements.txt

echo "Парсер успешно создан" 


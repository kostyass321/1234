#!/bin/bash

PROJECT="my-project"

mkdir -p "$PROJECT/css"
mkdir -p "$PROJECT/js"

touch "$PROJECT/index.html"
touch "$PROJECT/css/style.css"
touch "$PROJECT/js/script.js"

echo "Структура проекта создана:"
echo "$PROJECT/"
echo "├── index.html"
echo "├── css/"
echo "│   └── style.css"
echo "└── js/"
echo "    └── script.js"
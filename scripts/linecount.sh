#!/bin/bash

echo "Введите путь к файлу:"
read file

if [ -f "$file" ]; then
    lines=$(wc -l < "$file")
    echo "Количество строк: $lines"
else
    echo "Ошибка: файл не найден."
fi
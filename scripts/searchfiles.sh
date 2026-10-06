#!/bin/bash

echo "Введите расширение файла:"
read extension

echo "Найденные файлы:"

find . -type f -name "*.$extension"
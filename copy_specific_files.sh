#!/bin/bash

# Запрос исходной и целевой директории у пользователя
read -p "Введите путь к исходной директории: " sourse_dir
read -p "Введите путь к целевой директории: " target_dir
# Запрос расширения файлов, которые нужно скопировать
read -p "введите расшырение файла: " file_extention

# Проверка существования исходной директории
if [ ! -d $source_dir ]; then 
    echo "Исходной директории не существует"
    exit 1
fi

# Проверка существования целевой директории
if [ ! -d $target_dir ]; then 
    echo "Целеаой директории не существует"
    exit 1
fi

# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию
cp "$source_dir"/*."$file_extension" "$target_dir"

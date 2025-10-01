#!/bin/bash

for file in files/*; do
    if [ -f "$file" ]; then
        # 파일 이름 추출
        fname=$(basename "$file")

        # 첫 글자를 소문자로 변환
        first_char=$(echo "${fname:0:1}" | tr 'A-Z' 'a-z')

        # 해당 알파벳 폴더로 이동
        mv "$file" "$first_char/"
    fi
done


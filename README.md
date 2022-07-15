#   Таблица в формате SPA с фильтрацией, сортировкой и пагинацией.

## Frontend
Стэк: React, Materialize CSS, Axios.

1. Таблица содержит 4 колонки:
    1. Дата
    2. Название
    3. Количество
    4. Расстояние
2. Таблица имеет сортировку по всем полям кроме даты. 
3. Фильтрация реализована в виде двух выпадающих списков и текстового поля:
    1. Выбор колонки, по которой будет фильтрация
    2. Выбор условия (равно, содержить, больше, меньше)
    3. Поле для ввода значения для фильтрации
4. Таблица содержит пагинацию

## Backend

Стэк: Node.js, Express, TypeScript, PostgreSQL.

## Deployment

1. Создать БД в PostgreSQL.
    1. <a href="https://github.com/gogy5/table-widget/blob/master/API/src/db.ts">Имя и данные входа</a>
    2. <a href="https://github.com/gogy5/table-widget/blob/master/API/database_dump.sql">Код создания и заполнения таблицы БД</a>
2. Запуск приложения.
    1. `npm run install-dependencies`
    2. `npm start`
    3. `cd API && npm start` в другом терминале
    4. Приложение будет запущено на `http://localhost:8080/`

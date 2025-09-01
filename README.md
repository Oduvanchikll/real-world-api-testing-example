# 🧪 Real-World API Testing Example

Пет-проект по тестированию публичного REST API сервиса [JSONPlaceholder](https://jsonplaceholder.typicode.com).  
Цель — продемонстрировать комплексный подход к тестированию API: от тест-кейсов до баг-репортов и автоматизации.

> 📌 **JSONPlaceholder** — бесплатный фейковый REST API, который предоставляет **реалистичные данные** для тестирования.  
> Используется для:  
> - Тестирования API  
> - Демо-проектов  
> - Обучения  
> - Локальной разработки  

---

## 📁 Структура репозитория
real-world-api-testing-example/
├── Test_Cases/ # Тест-кейсы в Excel
├── Bug_Reports/ # Детальные баг-репорты
├── Postman/ # Коллекция и окружение для Postman
├── SQL/ # Гипотетические SQL-запросы
└── README.md



---

## 🛠️ Инструменты, использованные в проекте

| Инструмент | Назначение |
|----------|----------|
| **GitHub** | Хостинг репозитория и документации |
| **Postman** | Тестирование API, написание тестов на JavaScript, запуск коллекций |
| **Excel / Google Sheets** | Создание и оформление тест-кейсов |
| **VS Code** | Редактирование Markdown, JSON, SQL |
| **DB Browser for SQLite** (опционально) | Проверка SQL-запросов |

---

## 📋 Что входит в проект

### 1. Тест-кейсы (`Test_Cases/`)
- `JSONPlaceholder_API_TEST_CASES.xlsx` — подробные тест-кейсы:
  - CRUD-операции с постами
  - Поиск и фильтрация
  - Smoke-чек-лист
  - Колонка **"Примечания / Реальный результат"** с твоими наблюдениями

### 2. Баг-репорты (`Bug_Reports/`)
- `BugReport_Delete_Always_200.md` — DELETE всегда возвращает 200 OK
- `BugReport_UserID_Validation.md` — отсутствует валидация `userId`
- `BugReport_Non_Existent_Post.md` — несогласованность статусов для несуществующих ресурсов

### 3. Postman-коллекция (`Postman/`)
- `JSONPlaceholder_API_Testing.postman_collection.json` — коллекция с **автоматизированными тестами на JavaScript**
- `JSONPlaceholder_Env.postman_environment.json` — окружение с переменными
- `collection_runner_result.png` — скриншот успешного запуска всех тестов

### 4. SQL-запросы (`SQL/`)
- `hypothetical_queries.sql` — гипотетические SQL-запросы для проверки данных, которые возвращает API:
  - `SELECT`, `INSERT`, `UPDATE`, `DELETE`
  - Проверка целостности данных
  - Анализ связей между таблицами

---

## 📊 Ресурсы JSONPlaceholder (на основе официального описания)

API предоставляет **реалистичные фейковые данные**:

| Ресурс | Количество | Примеры связей |
|-------|-----------|----------------|
| `/posts` | 100 постов | У поста есть комментарии |
| `/comments` | 500 комментариев | Привязаны к посту (`postId`) |
| `/albums` | 100 альбомов | Альбом содержит фото |
| `/photos` | 5000 фото | Привязаны к альбому |
| `/todos` | 200 задач | Привязаны к пользователю |
| `/users` | 10 пользователей | У пользователя есть посты, альбомы, задачи |

> 🔗 Официальный сайт: [https://jsonplaceholder.typicode.com](https://jsonplaceholder.typicode.com)

---

## 🎯 Цель проекта

Показать, как тестируется **реальное API** на примере JSONPlaceholder.  
Проект демонстрирует:
- Планирование тестирования
- Составление тест-кейсов
- Поиск и документирование багов
- Автоматизацию тестов в Postman
- Понимание структуры данных (через SQL)
- Профессиональный подход к документированию

---

## 🔗 Ссылки
- [JSONPlaceholder API](https://jsonplaceholder.typicode.com)
- [Postman](https://postman.com)
- [GitHub репозиторий проекта](https://github.com/Oduvanchikll/real-world-api-testing-example)

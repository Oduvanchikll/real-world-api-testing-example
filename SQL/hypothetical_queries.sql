-- =============================================
-- Гипотетические SQL-запросы для JSONPlaceholder
-- Представим, что данные хранятся в реальной БД
-- =============================================

-- Таблица постов
CREATE TABLE posts (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица пользователей
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    username TEXT UNIQUE
);

-- Таблица комментариев
CREATE TABLE comments (
    id INTEGER PRIMARY KEY,
    post_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    body TEXT,
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

-- =============================================
-- Примеры запросов, которые могли бы использоваться
-- при тестировании или проверке данных
-- =============================================

-- 1. Выбрать все посты пользователя с ID=1
SELECT * FROM posts WHERE user_id = 1;

-- 2. Посчитать количество постов у каждого пользователя
SELECT user_id, COUNT(*) as post_count
FROM posts
GROUP BY user_id
ORDER BY post_count DESC;

-- 3. Найти посты, где в заголовке есть слово "error"
SELECT * FROM posts
WHERE title LIKE '%error%';

-- 4. Проверить, существует ли пост с ID=9999
SELECT COUNT(*) as exists FROM posts WHERE id = 9999;

-- 5. Удалить пост (в реальной БД)
DELETE FROM posts WHERE id = 1;

-- 6. Обновить пост
UPDATE posts
SET title = 'Updated Title', body = 'New body'
WHERE id = 1;

-- 7. Проверить целостность: все посты имеют существующего пользователя
SELECT p.id, p.user_id
FROM posts p
LEFT JOIN users u ON p.user_id = u.id
WHERE u.id IS NULL;

-- 8. Получить все комментарии к посту с ID=1
SELECT * FROM comments WHERE post_id = 1;

-- 9. Проверить, что у поста с ID=1 ровно 5 комментариев
SELECT COUNT(*) as comment_count
FROM comments
WHERE post_id = 1;

-- 10. Найти все комментарии с email, содержащим "example.com"
SELECT * FROM comments
WHERE email LIKE '%example.com';
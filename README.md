Добро пожаловать в AllArticles!

## О проекте

AllArticles - это веб-приложение, построенное на Ruby on Rails, которое позволяет любителям книг/статей взаимодействовать друг с другом и делиться статьями с другими. Пользователи могут:

 Прочитать интересные статьи, написанные другими пользователями.
 Опубликовать свои собственные статьи, которые им понравились.

## Технологии стека

AllArticles использует следующий стек технологий:

 - Ruby on Rails: Веб-фреймворк<br>
 - Postgresql: Система управления базами данных<br>
 - Devise: Облегченная система аутентификации и регистрации<br>
 - Turbolinks: Улучшение производительности навигации<br>
 - Materialize CSS: Фреймворк Material Design для стилизации

## Настройка

### Предварительные условия

- Ruby 3.0 или выше<br>
- Rails 7.0 или выше<br>
- Postgresql 12 или выше

### Установка

1. Клонируйте репозиторий: `git clone https://github.com/example/AllArticles.git`
2. Перейдите в каталог проекта: `cd AllArticles`
3. Установите зависимости: `bundle install`
4. Создайте базу данных Postgresql и выполните миграции: `rails db:create db:migrate`
5. Запустите сервер разработки: `rails s`

### Использование

 Перейдите в браузере на `http://localhost:3000`/`http://127.0.0.1:3000/users/auth/google_oauth2/callback`.
 Зарегистрируйтесь или войдите.
 Найдите статьи, которые вас интересуют.
 Опубликуйте свою собственную статью, перейдя на страницу "Создать статью".

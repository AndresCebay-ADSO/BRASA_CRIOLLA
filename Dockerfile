FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    ca-certificates \
    gnupg \
    && docker-php-ext-install pdo_mysql mbstring bcmath gd

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app
COPY . .

RUN composer install --no-dev --optimize-autoloader
RUN npm install
RUN npm run build

RUN php artisan optimize

CMD echo "=== TESTING DB CONNECTION ===" && \
    php -r "try { new PDO('mysql:host=mysql.railway.internal;port=3306;dbname=railway', 'root', 'cdjTxbVmqqPNlNFeXpNCjpkfrtchpvjV'); echo 'DB Connection OK\n'; } catch(Exception \$e) { echo 'DB Error: ' . \$e->getMessage() . '\n'; }" && \
    echo "=== MIGRATION STATUS BEFORE ===" && \
    php artisan migrate:status && \
    echo "=== RUNNING MIGRATIONS ===" && \
    php artisan migrate --force --verbose && \
    echo "=== MIGRATION STATUS AFTER ===" && \
    php artisan migrate:status && \
    echo "=== SHOWING TABLES ===" && \
    php -r "try { \$pdo = new PDO('mysql:host=mysql.railway.internal;port=3306;dbname=railway', 'root', 'cdjTxbVmqqPNlNFeXpNCjpkfrtchpvjV'); \$tables = \$pdo->query('SHOW TABLES')->fetchAll(); foreach(\$tables as \$table) { echo 'Table: ' . \$table[0] . '\n'; } } catch(Exception \$e) { echo 'Error: ' . \$e->getMessage() . '\n'; }" && \
    php artisan config:cache && \
    php artisan route:cache && \
    php artisan view:cache && \
    php artisan serve --host=0.0.0.0 --port=8080
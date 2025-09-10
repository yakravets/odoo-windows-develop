# odoo-windows-develop

Для розгортання на Windows потрібно:
1. Встановити Docker Desktop(має бути увімкнена віртуалізація в BIOS).
2. Клонувати(git clone) або завантажити як zip-архів цей репозиторій
3. Якщо встановлюється додатковий екземпляр до існуючого:
3.1 - змінити порти в конфігураційному файлі(odoo.conf) в лівій частині.
3.2 - змінити назви сервісів db_1 та odoo_1
3.3 - змінити зазву **image: odoo_1_18:latest** на унікальну
4. В папці запустити з Powershell або CMD команду підняття контейнерів
`docker compose up -d --build --remove-orphans`
5. Після підняття перейти по адресі http://localhost:9999 (або своєму) і перевірити чи працює система.
6. Якщо отримуємо "Internal Server Error" - тоді:

6.1 виконуємо команду:
`docker compose run --rm odoo_1 odoo -c /etc/odoo/odoo.conf -d odoo -i base --stop-after-init`
або `docker compose run --rm odoo_1 odoo -d odoo -i base --stop-after-init` якщо отримали помилку.

6.2 запускаємо ще раз сервер командою п. 4.
7. Оновляємо сторінку і потраплаяємо на сторінку логіну в системі. Стандартний логін/пароль: admin/admin
DELETE
FROM user_roles;
DELETE
FROM users;
DELETE
FROM products_category;
DELETE
FROM products;
DELETE
FROM services_category;
DELETE
FROM services;
ALTER SEQUENCE global_seq RESTART WITH 100;

INSERT INTO user_roles
VALUES (9000, 'Admin'),
       (9001, 'User');

INSERT INTO users
VALUES (0000, 'Никита', 'Ефимов', 'Nadoneco', 'yewocressoffa-5634@gmail.com', '+79256795473', 'yewocressoffa', now(),
        true, 9000),
       (0001, 'Дмитрий', 'Коротков', 'Uydenari', 'poiwatroucribi-7962@gmail.com', '+79254376229', 'poiwatroucribi',
        now(), true, 9001),
       (0002, 'DEFAULT', 'DEFAULT', 'DEFAULT', 'DEFAULT@DEFAULT', '+70000000000', 'DEFAULT',
        now(), true, 9001);

INSERT INTO products_category
VALUES (9100, 'Крупная бытовая техника'),
       (9101, 'Встраиваемая бытовая техника'),
       (9102, 'Техника для кухни'),
       (9103, 'Техника для дома'),
       (9104, 'Компьютеры'),
       (9105, 'Комплектующие для ПК'),
       (9106, 'Смартфоны'),
       (9107, 'Планшеты'),
       (9108, 'Ноутбуки'),
       (9109, 'Мониторы'),
       (9110, 'Консоли'),
       (9200, 'Категория не определена');

/* TODO расширить до 20 товаров, добавить новые категории*/
INSERT INTO products
VALUES (4000, 0000, 'PC AMD Ryzen 7 5700', 'Готовый игровой PC с подсветкой', 61220, 5, 1, now(), true, 9104,
        'https://i.imgur.com/LtbPtAJ.jpg'),
       (4001, 0000, 'Hansa', 'Индукционная варочная панель', 16990, 3, 5, now(), true, 9101,
        'https://i.imgur.com/hJ7ssCo.png'),
       (4002, 0001, 'Philips', 'Кофеварка капельная', 3590, 4, 1, now(), true, 9102,
        'https://i.imgur.com/GG3fCzW.png'),
       (4003, 0001, 'Evolution', 'Вертикальный пылесос', 3142, 2, 2, now(), true, 9103,
        'https://i.imgur.com/L3RE5lr.jpg'),
       (4004, 0000, 'Palit GeForce RTX 4080 GameRock 16GB', 'Видеокарта', 99940, 5, 4, now(), true, 9105,
        'https://i.imgur.com/niZVPNh.png'),
       (4005, 0001, 'GIGABYTE B550M AORUS ELITE', 'Материнская плата', 10410, 3, 2, now(), true, 9105,
        'https://i.imgur.com/TfInuSO.jpg'),
       (4006, 0000, 'AMD Ryzen 5 5600X AM4, 6 x 3700 МГц', 'Процессор', 15090, 5, 1, now(), true, 9105,
        'https://i.imgur.com/T0iy0ki.png'),
       (4007, 0000, 'Realme C31 4/64 ГБ, темно-зеленый', 'Смартфон', 8390, 2, 1, now(), true, 9106,
        'https://i.imgur.com/THPv0Q5.png'),
       (4008, 0000, 'Apple iPhone 13 128 ГБ, тёмная ночь', 'Смартфон', 55691, 2, 5, now(), true, 9106,
        'https://i.imgur.com/4yVVA2G.png'),
       (4009, 0001, 'Xiaomi Redmi 10C 4/128 ГБ RU, серый графит', 'Смартфон', 11820, 4, 5, now(), true, 9106,
        'https://i.imgur.com/CzPrqAl.png'),
       (4010, 0000, 'Apple iPad 10.2 2021, 64 ГБ, Wi-Fi, серый космос', 'Планшет', 28290, 2, 3, now(), true, 9107,
        'https://i.imgur.com/mX1VZJA.png'),
       (4011, 0001, 'Xiaomi Redmi Pad, RU, 4 ГБ/128 ГБ, Wi-Fi, графитовый серый', 'Планшет', 19290, 4, 1, now(), true, 9107,
        'https://i.imgur.com/Kb0mhA9.png'),
       (4012, 0001, 'Samsung Galaxy Tab A7 Lite SM-T220, 3 ГБ/32 ГБ, Wi-Fi, темно-серый', 'Планшет', 10990, 2, 5, now(), true, 9107,
        'https://i.imgur.com/k1iRi3B.png'),
       (4013, 0001, 'Apple MacBook Air 13 Late 2020 2560x1600', 'Ноутбук', 69790, 5, 2, now(), true, 9108,
        'https://i.imgur.com/0e6bo08.png'),
       (4014, 0000, 'Honor MagicBook 15, 15.6"', 'Ноутбук', 50990, 2, 5, now(), true, 9108,
        'https://i.imgur.com/9dM4HGV.png'),
       (4015, 0000, 'HUAWEI MateBook D 15 1920x1080', 'Ноутбук', 48536, 1, 3, now(), true, 9108,
        'https://i.imgur.com/W1YtF2F.png'),
       (4016, 0001, '23.8" Xiaomi Redmi Display 1A, 1920x1080', 'Монитор', 9689, 3, 4, now(), true, 9109,
        'https://i.imgur.com/zZPMDpH.png'),
       (4017, 0000, '27" Xiaomi Mi Gaming Display, 2560x1440', 'Монитор', 26513, 5, 5, now(), true, 9109,
        'https://i.imgur.com/puGBX9O.png'),
       (4018, 0001, '20" Samsung SyncMaster S20A300B, 1600x900', 'Монитор', 3000, 1, 1, now(), true, 9109,
        'https://i.imgur.com/DBA5aol.png'),
       (4019, 0001, 'Sony PlayStation 5 825 ГБ SSD, белый', 'PlayStation', 55590, 4, 5, now(), true, 9110,
        'https://i.imgur.com/FLqoJO4.png'),
       (4020, 0000, 'Microsoft Xbox 360 E 500 ГБ HDD, черный', 'Xbox', 9200, 3, 4, now(), true, 9110,
        'https://i.imgur.com/pqG3NVo.png'),
       (4021, 0001, 'Nintendo Switch OLED 64 ГБ, белый', 'Nintendo', 27780, 5, 5, now(), true, 9110,
        'https://i.imgur.com/vO0YgCv.png');

INSERT INTO services_category
VALUES (9200, 'Репетиторы'),
       (9201, 'Мастера по ремонту'),
       (9202, 'Мастера красоты'),
       (9203, 'Фрилансеры');

INSERT INTO services
VALUES (6000, 0000, 'Ксения Сергеевна Дьяченко', 'Репетитор по английскому языку', 3000, 5, now(), true, 9200),
       (6001, 0000, 'Сергей Сергеевич Даянов', 'Мастер по ремонту стиральных и посудомоечных машин', 500, 3, now(),
        true, 9201),
       (6002, 0001, 'Елена Валентиновна Вареникова', 'Косметолог', 2000, 4, now(), true, 9202),
       (6003, 0001, 'Анастасия Валерьевна Андреева', 'Таргетированная реклама, SMM', 13990, 2, now(), true, 9203);

INSERT INTO product_cart
VALUES (0002, 4013),
       (0002, 4019),
       (0002, 4021);
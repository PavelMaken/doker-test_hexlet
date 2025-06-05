REATE TABLE material_types (
  id SERIAL PRIMARY KEY,
  material_type VARCHAR(100),
  percent_of_loss NUMERIC(4,2)
);

CREATE TABLE product_types (
  id SERIAL PRIMARY KEY,
  product_type VARCHAR(100),
  koef_product_type NUMERIC(4,2)
);

CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  product_type_id INT REFERENCES product_types(id),
  product_name VARCHAR(200),
  articul INTEGER,
  minimal_cost_for_partner NUMERIC(10,2),
  roll_width NUMERIC (4,2)
);

CREATE TABLE materials (
  id SERIAL PRIMARY KEY,
  material_name VARCHAR(200),
  material_type_id INT REFERENCES material_types(id),
  price_per_unit_of_material NUMERIC(10,2),
  quantity_in_stock NUMERIC(10,2),
  min_quantity NUMERIC(10,2),
  quantity_per_package INTEGER,
  unit_of_measurement VARCHAR(100)
);

CREATE TABLE product_materials(
  product_id INT REFERENCES products(id),
  material_id INT REFERENCES materials(id),
  required_amount_of_material NUMERIC(4,2)
);

COPY table_name FROM 'path_to_file' WITH (FORMAT CSV, DELIMITER ';');.

ну чего братик, как оно? Ты если что модешь кидануть скриптик, я проверю на всякий, ну а так я буду какждые 5-10 мин обновлять страничку, удачки

Ну лан ес че ща в магаз слетаю, кушать хочетса....

ну я тута)

да у нас не те варианты дали, все я тоже тут 
![изображение](https://github.com/user-attachments/assets/3a5679e9-86ca-43f3-849f-23d8c7f91638)
есть вот такая таблица я чет не вьезжаю как ее нормализовать 

братик, ебатть ща разрулим, смотри. Я думаю ты уже догодался, что вместо наименования матеирала, там должен быть его id, во втором случае такая же хуйня. Но если для кого-то из них не было таблицы и тебе для кода не нужны будут эти данные, можешь хуйца плотного забить

окей щя решу вопросик, спасибо 

если прям пиздец будет, добавь таблички, попробую фастиком скриптик сделать 
![изображение](https://github.com/user-attachments/assets/26581d43-b172-43fb-9a36-e0167c0f8f30)
как думаешь вынести в отдельную таблицу  вот эту шнягу с ооо зао, или как лучше сделать

Тебе нужно будет в коде на них ссылаться? Если да, то вы выноси, если нет, то и нахуй? Ваще кинь скрины всех табличек, лучше с ориентирую тогда 

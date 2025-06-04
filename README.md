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



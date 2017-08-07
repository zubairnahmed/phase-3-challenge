CREATE TABLE grocery_items (
  ID SERIAL PRIMARY KEY,
  NAME TEXT NOT NULL,
  PRICE TEXT NOT NULL,
  SECTION TEXT NOT NULL
);

CREATE TABLE shoppers (
  ID SERIAL PRIMARY KEY,
  NAME TEXT NOT NULL
);

CREATE TABLE orders (
  ID SERIAL PRIMARY KEY,
  ITEM_ID INTEGER NOT NULL REFERENCES grocery_items(ID),
  SHOPPER_ID INTEGER NOT NULL REFERENCES shoppers(ID)
);

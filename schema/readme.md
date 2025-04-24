# E-commerce Schema Documentation

This document provides a detailed breakdown of the tables used in the `GRP_484_ecommerce` database schema. Each section includes an explanation of the entity and a table of the fields stored in the database.

---

## brand
A list of brands for products in the e-commerce platform.

| Column Name | Data Type     | Description                          |
|-------------|---------------|--------------------------------------|
| brand_id    | INT           | Unique ID for the brand (Primary Key) |
| brand_name  | VARCHAR(100)  | The name of the brand                 |

---

## product_category
Organizes products into categories (e.g., clothing, electronics).

| Column Name   | Data Type     | Description                              |
|---------------|---------------|------------------------------------------|
| category_id   | INT           | Unique ID for the category (Primary Key) |
| category_name | VARCHAR(100)  | The name of the category                 |

---

## product
Stores general product details such as name, brand, and base price.

| Column Name | Data Type      | Description                                         |
|-------------|----------------|-----------------------------------------------------|
| product_id  | INT            | Unique ID for the product (Primary Key)            |
| name        | VARCHAR(255)   | The name of the product                            |
| brand_id    | INT            | Links to the brand table (Foreign Key)             |
| category_id | INT            | Links to the product_category table (Foreign Key)  |
| base_price  | DECIMAL(10,2)  | The base price of the product                      |

---

## product_image
Stores URLs or file references for product images.

| Column Name | Data Type     | Description                                |
|-------------|---------------|--------------------------------------------|
| image_id    | INT           | Unique ID for the image (Primary Key)      |
| product_id  | INT           | Links to the product table (Foreign Key)   |
| image_url   | VARCHAR(255)  | URL or file reference for the product image|

---

## color
Manages available color options for products.

| Column Name | Data Type     | Description                                |
|-------------|---------------|--------------------------------------------|
| color_id    | INT           | Unique ID for the color (Primary Key)      |
| color_name  | VARCHAR(50)   | The name of the color                      |
| hex_code    | VARCHAR(7)    | Hex code for the color (e.g., #FFFFFF)     |

---

## size_category
Groups sizes into categories (e.g., clothing sizes, shoe sizes).

| Column Name       | Data Type     | Description                                 |
|-------------------|---------------|---------------------------------------------|
| size_category_id  | INT           | Unique ID for the size category (Primary Key) |
| category_name     | VARCHAR(100)  | The name of the size category               |

---

## size_option
Lists specific sizes (e.g., S, M, L, 42).

| Column Name      | Data Type    | Description                                  |
|------------------|--------------|----------------------------------------------|
| size_option_id   | INT          | Unique ID for the size option (Primary Key)  |
| size_name        | VARCHAR(10)  | The name of the size (e.g., S, M, L)         |
| size_category_id | INT          | Links to the size_category table (Foreign Key) |

---

## product_variation
Links a product to its variations (e.g., size, color).

| Column Name     | Data Type | Description                                 |
|------------------|-----------|---------------------------------------------|
| variation_id     | INT       | Unique ID for the variation (Primary Key)   |
| product_id       | INT       | Links to the product table (Foreign Key)    |
| color_id         | INT       | Links to the color table (Foreign Key)      |
| size_option_id   | INT       | Links to the size_option table (Foreign Key)|

---

## product_item
Represents purchasable items with specific variations.

| Column Name       | Data Type     | Description                                   |
|-------------------|---------------|-----------------------------------------------|
| product_item_id   | INT           | Unique ID for the product item (Primary Key)  |
| product_id        | INT           | Links to the product table (Foreign Key)      |
| variation_id      | INT           | Links to the product_variation table (Foreign Key) |
| price             | DECIMAL(10,2) | Price of the product item                     |
| stock_quantity    | INT           | Quantity of the product item in stock         |
| SKU               | VARCHAR(100)  | Stock Keeping Unit identifier                 |

---

## attribute_type
Defines types of attributes (e.g., text, number, boolean).

| Column Name       | Data Type     | Description                                 |
|-------------------|---------------|---------------------------------------------|
| attribute_type_id | INT           | Unique ID for the attribute type (Primary Key) |
| type_name         | VARCHAR(50)   | The name of the attribute type              |

---

## attribute_category
Groups attributes into categories (e.g., physical, technical).

| Column Name         | Data Type     | Description                                     |
|---------------------|---------------|-------------------------------------------------|
| attribute_category_id | INT         | Unique ID for the attribute category (Primary Key) |
| category_name         | VARCHAR(100)| The name of the attribute category              |

---

## product_attribute
Stores custom attributes for products (e.g., material, weight).

| Column Name         | Data Type     | Description                                     |
|---------------------|---------------|-------------------------------------------------|
| attribute_id        | INT           | Unique ID for the attribute (Primary Key)       |
| product_id          | INT           | Links to the product table (Foreign Key)        |
| attribute_type_id   | INT           | Links to the attribute_type table (Foreign Key) |
| attribute_category_id | INT         | Links to the attribute_category table (Foreign Key) |
| attribute_name      | VARCHAR(100)  | The name of the attribute                       |
| attribute_value     | VARCHAR(255)  | The value of the attribute                      |

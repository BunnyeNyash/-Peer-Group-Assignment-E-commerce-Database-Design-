# E-commerce Database Project

## 📚 Overview
This project focuses on designing and implementing a relational database for an e-commerce platform using MySQL. The database supports key operations such as managing products, product variations, categories, brands, and attributes. An Entity-Relationship Diagram (ERD) is created to visualize the database structure.

## 🛠️ Tools and Technologies
- **MySQL** – For building and managing the relational database
- **Draw.io** – For designing and visualizing the ERD (Entity Relationship Diagram)

## 🎯 Project Objective
To create a robust and normalized relational database for an e-commerce platform that supports:
- Product management (categories, brands, variations, attributes)
- Product image storage
- Size and color options for products
- Custom product attributes (e.g., material, weight)

## Prerequisites
- Basic knowledge of SQL and MySQL
- Understanding of database design (entities, relationships, normalization)
- Familiarity with primary keys, foreign keys, and constraints
- Experience with ERD tools for visualization

## Tables Included
- **product_image**: Stores URLs or file references for product images.
- **color**: Manages available color options for products.
- **product_category**: Organizes products into categories (e.g., clothing, electronics).
- **product**: Stores general product details (e.g., name, brand, base price).
- **product_item**: Represents purchasable items with specific variations.
- **brand**: Stores brand-related information.
- **product_variation**: Links products to their variations (e.g., size, color).
- **size_category**: Groups sizes into categories (e.g., clothing sizes, shoe sizes).
- **size_option**: Lists specific sizes (e.g., S, M, L, 42).
- **product_attribute**: Stores custom attributes (e.g., material, weight).
- **attribute_category**: Groups attributes into categories (e.g., physical, technical).
- **attribute_type**: Defines types of attributes (e.g., text, number, boolean).

## Folder Structure
```
ecommerce-database-project/
├── README.md
├── schema/
|   ├── README.md
│   └── GRP-484-ecommerce.sql
├── queries/
| ├── sample-queries.sql
│   └── db-sample-data.sql
├── users/
|   ├── README.md
│   └── user_roles_and_permissions.sql
├── docs/
│   └── GRP-484-ecommerce-ERD.png
```

## 🚀 How to Use
1. Clone the repo:
   ```bash
   https://github.com/Oumatedy/-Peer-Group-Assignment-E-commerce-Database-Design-.git
   ```
2. Open MySQL and run the `schema/GRP-484-ecommerce.sql` file to create the database and tables.
3. Add sample data and run queries from `queries/ sample-queries.sql `.
4. View the schema design in `docs/ GRP-484-ecommerce-ERD.png ` or import the ERD file into Draw.io.

## 📊 Expected Outcomes
- A fully normalized relational database for an e-commerce platform
- Clear documentation of entities, relationships, and constraints via the ERD
- A functional MySQL database ready for e-commerce operations

## 👥 Contributors
- **Tedy Ouma** - [GitHub](https://github.com/Oumatedy)
- **Otachi Bosibori** - [GitHub](https://github.com/BunnyeNyash)
- **Celestine Waithera** - [GitHub](https://github.com/Celestinewanjiru)
- **Ryan Kariuki** - [GitHub](https://github.com/raykaris)
- **Simon Mumo** - [GitHub](https://github.com/Snap360-tech)
- **Muburi Njuguna** - [GitHub](https://github.com/Muburii)

---
Feel free to contribute and enhance this e-commerce database system!


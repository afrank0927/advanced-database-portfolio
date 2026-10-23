# MIT 8103 – Advanced Database Systems Portfolio

**Student Registration Number:** 2026/A/MIT/0835  
**Case Study Organization:** ALFXION-TECH HUB  
**Project:** ICT Solutions Customer, Sales, Inventory and Service Management Database

## Project overview

This academic project proposes a database system for ALFXION-TECH HUB, an ICT solutions business. It models customers, product categories, products, sales orders, order items, payments, deliveries, and ICT service requests.

The repository contains practical starter files for the five portfolio areas:
1. Database design and modelling
2. Query processing and optimisation
3. Transactions and concurrency
4. NoSQL and advanced data models
5. Distributed and cloud database exercise

**Important:** These are project starter files. Run the SQL and MongoDB examples in your own environment, check the results, and add your own screenshots and measured performance results before submitting. Do not describe a test as successful until you have actually run it.

## Technology choices

- Relational database: MySQL 8.x
- NoSQL examples: MongoDB
- Cloud design exercise: Amazon RDS for MySQL (diagram/planning only; no cloud resource is created by this repository)
- Version control and evidence: GitHub

## Repository structure

```text
alfxion-tech-hub-advanced-database-portfolio/
├── README.md
├── .gitignore
├── portfolio-1-database-design/
│   ├── schema.sql
│   ├── seed_data.sql
│   ├── relational-schema.md
│   └── er-diagram.mmd
├── portfolio-2-query-optimisation/
│   ├── queries.sql
│   ├── indexes.sql
│   └── performance-results-template.md
├── portfolio-3-transactions-concurrency/
│   ├── transactions.sql
│   └── concurrency-lab.md
├── portfolio-4-nosql/
│   ├── mongodb_documents.json
│   └── mongodb_queries.js
├── portfolio-5-distributed-cloud/
│   ├── architecture.mmd
│   └── cloud-design.md
├── evidence/
│   ├── README.md
│   └── test-results-template.md
└── documentation/
    ├── technical-reflection-template.md
    └── ai-use-declaration.md
```

## Getting started

1. Install MySQL 8.x locally, or use a MySQL instance provided by your school.
2. Open a MySQL client such as MySQL Workbench.
3. Run `portfolio-1-database-design/schema.sql`.
4. Run `portfolio-1-database-design/seed_data.sql`.
5. Run the sample statements in `portfolio-2-query-optimisation/queries.sql`.
6. Follow `portfolio-3-transactions-concurrency/concurrency-lab.md` to test transactions.
7. If MongoDB is part of your required practical work, import the JSON documents and run `portfolio-4-nosql/mongodb_queries.js`.
8. Save screenshots and actual test results in `evidence/`.
9. Update this README with the exact software versions and the results you personally observed.

## Database design summary

- A customer can place many orders.
- A category can contain many products.
- An order contains one or more order items.
- Each order item refers to one product.
- An order can have payment records and delivery records.
- A customer can submit multiple ICT service requests.
- Foreign keys enforce relationships between related records.

## Evidence and academic integrity

Use screenshots from your own database session. Record the date, software version, query tested, observed result, and any errors. Do not invent query timings, execution plans, screenshots, cloud deployments, or test outcomes.

The AI-use declaration in `documentation/ai-use-declaration.md` is a draft. Edit it to accurately describe the assistance you used and comply with your institution's rules.

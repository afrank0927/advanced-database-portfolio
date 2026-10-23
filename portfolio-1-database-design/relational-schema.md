# ALFXION-TECH HUB Database Schema

## Overview

The database design supports customer transactions, product sales, payment processing, inventory tracking, delivery records, and service request management.

## Core entities

- Customer
- Category
- Product
- Orders
- OrderItem
- Payment
- Delivery
- ServiceRequest

## Entity relationships

- One customer can place many orders.
- One category can contain many products.
- One order can contain many order items.
- One product can appear in many order items.
- One order can have multiple payment records.
- One order can have multiple delivery records.
- One customer can submit many service requests.

## Referential integrity

The schema uses foreign keys to ensure that records reference valid customers, products, and orders. For example, `OrderItem` cannot reference a non-existent `OrderID` or `ProductID`.

## Normalisation note

The design follows the main principles of normalisation:

- 1NF: Each table stores atomic values.
- 2NF: Attributes depend on the complete primary key.
- 3NF: Non-key attributes are not dependent on other non-key attributes.

This reduces redundancy and improves data consistency.

# ToyShopDB

## Project Overview

This project implements a relational database for a toy shop management system. The database is designed to manage shops, employees, professions, suppliers, toys, clients, deliveries, payments, and orders. It demonstrates real-world business relationships and enforces data integrity using primary keys, foreign keys, constraints, triggers, procedures, and views.

## Database Structure -
Main Entities

Shop – Stores information about toy shops.

Worker – Stores employee details including profession and contact information.

Professionworker – Stores profession names, salaries, and starting dates.

Provider – Stores supplier information for each shop.

Toy – Stores toy types, providers, and prices.

City & Street – Stores city and street information for client addresses.

CityStreetKl – Links cities and streets to form complete client addresses.

Klient – Stores client information with contact details and addresses.

Paymentmethod – Stores payment methods used by clients.

Delivery – Stores delivery methods and delivery dates.

Orders – Links clients, deliveries, and toys into completed orders.

## Features
## Data Integrity -

Primary Keys (PK) – Uniquely identify each record.

Foreign Keys (FK) – Maintain relationships between tables.

CHECK Constraints – Ensure valid data (e.g., toy price > 0, salary > 0, client phone not empty).

UNIQUE Constraints – Ensure phone numbers for workers and providers are unique.

ON DELETE CASCADE – Automatically deletes related orders when a client or delivery is removed.

## Business Logic -

Stored Procedures -

proc_01: Reduce toy prices by 30% for toys under 300 UAH.

proc_02: Retrieve toy information by type.

AddOrder: Create a new order linking client, toy, and delivery.

## Triggers -

Prevent updates on suppliers.

After insert trigger logs inserted suppliers to a separate table.

## Views -

WorkerDateBeg: Lists professions and employees within a specific date range.

ProviderToy: Links suppliers with their toys.

Queries and Reports

Aggregate functions: COUNT, MAX, AVG for clients, salaries, and toy prices.

Filtering: BETWEEN, LIKE.

Sorting and grouping: ORDER BY, GROUP BY.

Joins: Multiple inner joins to link clients, orders, shops, and deliveries.


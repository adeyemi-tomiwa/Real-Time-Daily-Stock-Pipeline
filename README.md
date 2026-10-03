# Real-Time-Daily-Stock-Pipeline
## Project Overview
This project implements a daily stock data ETL pipeline that extracts stock market data using Python, transforms the data for analysis, loads the processed datasets into PostgreSQL, and uses Grafana to monitor stock performance over time. The pipeline works with daily stock data for selected companies and produces analytical metrics such as 7-day moving averages, 20-day moving averages, percentage price changes, and portfolio values.  The project demonstrates how raw financial market data can be transformed into structured, analysis-ready data and connected to a monitoring dashboard.
## Problem Statement

Stock market data is generated continuously and can be difficult to monitor efficiently when working directly with raw API responses.

This project was built to create a structured workflow for:

- Extracting daily stock market data
- Cleaning and transforming the raw data
- Calculating useful stock performance metrics
- Storing the processed data in PostgreSQL
- Monitoring stock performance through Grafana

## Pipeline Architecture

```mermaid
flowchart LR
    A["Alpha Vantage API"] --> B["Python"]
    B --> C["Data Transformation"]
    C --> D["PostgreSQL"]
    D --> E["SQL Queries"]
    E --> F["Grafana"]
```
## Architecture Components
| Component |	Tool |
| :--- | :--- |
| Data source	| Alpha Vantage API |
| Data extraction	| Python |
| Data transformation |	Python / Pandas |
| Data storage	| PostgreSQL |
| Data querying	| SQL |
| Monitoring / Visualization | Grafana |

## Tech Stack
Python

Pandas

Requests

PostgreSQL

SQL

Grafana

Git

GitHub

## Data Source

The stock data is retrieved from the Alpha Vantage API using the TIME_SERIES_DAILY endpoint.

### The pipeline works with the following stock symbols:

AAPL

GOOGL

MSFT

NFLX

TSLA

### The extracted data contains:

Symbol

Date

Open price

High price

Low price

Closing price

# CTA Crowding Forecast
End-to-end public transportation crowding forecast project using Python, PostgreSQL, and Power BI. 
Includes data preprocessing, Random Forest model training per station, SQL business 
queries, estimated passenger prediction for any date, and an interactive dashboard 
to visualize ridership trends across 147 CTA stations.

## Project Overview
This project forecasts estimated passenger counts for 147 CTA transit stations 
using historical ridership data from 2001 to 2019. A Random Forest model is trained 
per station to predict daily crowd levels based on date features.

## Tools Used
- **Python** — Data preprocessing, feature engineering, model training
- **PostgreSQL** — Data storage and SQL analysis queries
- **Power BI** — Interactive dashboard for visualization
- **VS Code** — Single integrated development environment

## Dataset
- Source: CTA Ridership — L Station Entries Daily Totals
- Dataset Link: [CTA Ridership — L Station Entries Daily Totals](https://www.kaggle.com/datasets/chicago/chicago-transit-authority-cta-data)
- Records: 962,546 rows
- Stations: 147
- Date Range: 2001-01-01 to 2019-06-30
- Features: station_id, stationname, date, daytype, rides

## Project Structure

<img width="451" height="241" alt="image" src="https://github.com/user-attachments/assets/ded91051-a9f5-4ceb-81b2-1d0db56682ef" />


## Pipeline Flow
PostgreSQL Database
↓
SQL Queries → top_10_stations + avg_rides_by_daytype
↓
Python Notebook → Data preprocessing → Model training (147 models)
↓
Date input → Estimated passengers per station → forecast_report
↓
Power BI Dashboard → Refresh → Updated visuals

## Key Features
- Predicts estimated passengers for **every station** on any entered date
- Trains individual Random Forest model per station
- Sparse stations handled using historical average fallback
- 4 output files auto-saved and connected to Power BI

## SQL Queries
- Top 10 busiest stations by total ridership
- Average rides by day type (Weekday / Saturday / Sunday)

## Model Details
- Algorithm: Random Forest Regressor
- Trees: 20 per station
- Features: year, month, day, day_of_week, day_type_num
- Stations with sparse data: historical average used

## Power BI Dashboard Visuals
- KPI Cards: Total Stations, Total Forecasted Riders
- Line Chart: Actual vs Forecasted Passengers over time
- Bar Chart: Top 10 Busiest Stations
- Donut Chart: Ridership by Day Category
- Table: Detailed Forecast by Station
- Radar Chart: Average Passengers by Day of Week

## How to Run
1. Open VS Code in the project folder
2. Ensure PostgreSQL is running
3. Run all cells in `Crowding_Forecast_Model.ipynb`
4. Enter prediction date when prompted
5. Open Power BI → click Refresh

## Author
**Mohamed Sathik Z** 
© 2026

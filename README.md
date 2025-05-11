Greenland Fisheries Nowcasting System – Project Runbook
Mohammad Alwazzan, Channing Spencer, Sahlmah Animashaun

Background

The fishing industry is the lifeblood of Greenland’s national economy, underpinning its cultural, social, and economic fabric. In 2023, fisheries accounted for approximately 90% of Greenland’s export revenue, generating over 2 billion DKK (roughly 300 million USD) from the sale of fish and shrimp annually. With a population of just 56,000 people, Greenland relies heavily on its marine resources to sustain its economy, fund public services, and support employment. Over 20% of the workforce is directly or indirectly engaged in fishing and related industries. However, official catch data is released at a delay of about three months (Q3 2024 data, 35,727 tonnes, was published on January 31, 2025), creating a gap that can hinder timely decision-making for policymakers, fishing companies, and economic planners. This project addresses this gap by developing a nowcasting system to predict Greenland’s quarterly fish catch before official releases, delivering actionable insights to stakeholders.

This project is an effective predictive analytics system that collects data from 2011 to 2024, stores all API-fetched variables in a SQLite database, fits a LASSO regression model, monitors performance, and produces outputs such as nowcasts, backtest results, and visualizations. Data is sourced from Statistics Greenland and the Environmental Research Division Data Access Program (ERDDAP). The model starts with 24 variables (including lags), uses LASSO regression to select 8, and manually chooses 5 regressors based on conceptual reasoning: lagged total catch (lag 4), foreign vessel catch (lag 4), lagged fish export values (lag 2), and melt index - sea surface temperature (SST) interaction terms for the geographic area aligning with the west and east Greenland fishing grounds.

System Architecture & Execution Flow
1.	Locate: https://github.com/ccspen21/greenland-fishery-nowcast-2025 
2.	Run setup_dataset.ipynb
•	This pulls raw data from Statistics Greenland and NOAA ERDDAP, processes it into quarterly format, and stores all variables in a local SQLite database (greenland_fishery.db). The pipeline includes merging total catch, foreign vessel catch, exports, and environmental indicators.
3.	Run model_fitting_diagnostics.ipynb
•	This runs a LASSO regression on the historical dataset to select the most predictive features from a pool of 24 lagged explanatory variables. After variable selection, the model is evaluated using standard diagnostics and performance metrics, and the final coefficients are saved for nowcasting.
4.	Run model_run_reports.ipynb 
•	This applies the trained model to the most recent quarter, generating out-of-sample nowcasts along with visualizations. Backtests and performance summaries are also produced here for reporting.
5.	Run periodic_update.ipynb 
•	This script updates the dataset when new API data is released, such as updated quarterly catch figures or environmental data. It appends the new entries to the SQLite database and re-triggers the pipeline.

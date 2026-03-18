## Decision 1 — Standardizing Date Formats
Problem: The raw transactional data contained inconsistent date formats such as 29/08/2023, 12-12-2023, and 2023-02-05. This inconsistency made it difficult to join with the date dimension and perform time‑based analysis.
Resolution: All dates were converted into a uniform YYYY-MM-DD format during the ETL process. This ensured compatibility with the dim_date table and enabled accurate month‑over‑month and year‑over‑year reporting.

## Decision 2 — Normalizing Product Categories
Problem: Product categories were inconsistently cased and sometimes pluralized, e.g., electronics, Electronics, Groceries, and Grocery. This inconsistency would fragment category‑based aggregations.
Resolution: Categories were standardized to a consistent, singular, capitalized format (e.g., Electronics, Clothing, Grocery). This allowed reliable grouping and aggregation in analytical queries.

## Decision 3 — Handling Missing Store Information
Problem: Several rows had missing store_city or store_name values. If left unresolved, these NULLs would break foreign key relationships with the dim_store table and distort store performance analysis.
Resolution: Missing values were either corrected using known mappings (e.g., filling in Mumbai for Mumbai Central) or replaced with a placeholder such as Unknown when the data could not be recovered. This ensured referential integrity and allowed all transactions to be included in the warehouse.




## Storage Systems
- Readmission Prediction: Store historical treatment data in a Data Lakehouse. It supports structured EHR tables plus embeddings for unstructured notes, enabling ML training directly on unified data.
- Doctor Queries (NLP): Use a Data Lake for raw text notes and medical records, combined with a vector database for embeddings. This allows natural language search over patient history.
- Management Reports: A Data Warehouse is ideal for structured, aggregated data like occupancy and costs, ensuring fast OLAP queries and reliable dashboards.
- Real‑time ICU Vitals: A streaming database (e.g., Apache Kafka + time‑series DB like InfluxDB) captures continuous sensor feeds, while snapshots flow into the lakehouse for long‑term analysis.


## OLTP vs OLAP Boundary
- OLTP: Hospital’s transactional systems (EHR, billing, ICU devices) handle real‑time inserts and updates.
- Boundary: ETL/streaming pipelines extract data from OLTP systems into analytical storage.
- OLAP: Warehouse and lakehouse layers support reporting, predictive analytics, and NLP queries. Doctors and management interact only with OLAP systems, not raw OLTP databases.


## Trade‑offs
A major trade‑off is complexity vs flexibility. Using multiple storage systems (warehouse, lake, lakehouse, streaming DB) increases architectural complexity and operational overhead. However, forcing all workloads into one system would compromise performance (e.g., warehouses aren’t good at unstructured text or streaming).
Mitigation: Adopt a Lakehouse‑centric design where most data lands in the lakehouse, with specialized systems (warehouse, streaming DB) integrated only where they add clear value. This reduces duplication while still meeting performance needs.


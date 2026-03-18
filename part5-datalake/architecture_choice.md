## Architecture Recommendation

For a fast‑growing food delivery startup that collects diverse data types such as GPS location logs, customer text reviews, payment transactions, and restaurant menu images, the most suitable choice is a **Data Lakehouse** architecture. A traditional data warehouse is optimized for structured data like transactions and would struggle to handle unstructured formats such as images or free‑form text. A pure data lake can store all formats but lacks the performance and governance features needed for analytics at scale. The lakehouse combines the strengths of both.

**Reason 1 — Multi‑format support:** A lakehouse can ingest structured (payments), semi‑structured (GPS logs, JSON), and unstructured data (reviews, images) in one unified platform. This flexibility is critical for a startup dealing with varied sources.

**Reason 2 — Advanced analytics:** By storing embeddings of text reviews and metadata of images alongside transactional data, the lakehouse enables machine learning and AI models to run directly on the data. This supports use cases like sentiment analysis, fraud detection, and personalized recommendations.

**Reason 3 — Governance and performance:** Unlike a raw data lake, the lakehouse enforces schema management, ACID transactions, and indexing. This ensures reliable queries for financial reporting while still allowing exploratory analytics on large volumes of raw data.

In short, a Data Lakehouse provides the scalability of a data lake with the reliability of a warehouse, making it ideal for a food delivery startup that needs to integrate diverse data types while supporting both operational reporting and AI‑driven insights.


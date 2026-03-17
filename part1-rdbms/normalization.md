# Anomaly Analysis
## Insert Anomaly
If a new Sales Representative(Column M) is hired but hasn’t made any sales yet, one cannot insert their details into the table without creating a dummy order. Then the data in colums L,N cannot be entered independently.

## Update Anomaly
 If Anita Desai’s(Column M , Row 2) office address changes, one must update it in every row where she appears. Missing one row leads to inconsistent data.

 ## Delete Anomaly
  If you delete the only order for a customer, you lose all information about that customer.
  Suppose ORD1185 (Amit Verma, Bangalore, Webcam purchase) was deleted. If this were his only order, all of Amit’s details (customer_id,      customer_name, customer_email, customer_city) would be lost.

  ## Normalization justification
  By keeping everything in one table the following issues and anomalies may arise:
  - Redundancy
     Customer details (name, city, email) repeat for every order.
     Sales rep details repeat for every order.
     If Priya Sharma changes her email, you must update it in every row.
- Update Anomalies
     If you forget to update one row, you’ll have inconsistent data (Priya has two different emails in different orders).
- Insertion Anomalies
     You can’t add a new product until it’s ordered.
     You can’t add a new customer until they place an order.
- Deletion Anomalies
    If you delete Priya’s last order, you lose her customer record entirely.
    If you delete the last order for “Notebook,” you lose the product record.





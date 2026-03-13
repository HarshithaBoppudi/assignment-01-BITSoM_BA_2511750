## Anomaly Analysis
# Insert Anomaly
If a new Sales Representative(Column M) is hired but hasn’t made any sales yet, one cannot insert their details into the table without creating a dummy order. Then the data in colums L,N cannot be entered independently.

# Update Anomaly
 If Anita Desai’s(Column M , Row 2) office address changes, one must update it in every row where she appears. Missing one row leads to inconsistent data.

 # Delete Anomaly
  If you delete the only order for a customer, you lose all information about that customer.
  Suppose ORD1185 (Amit Verma, Bangalore, Webcam purchase) was deleted. If this were his only order, all of Amit’s details (customer_id,      customer_name, customer_email, customer_city) would be lost.




SELECT DISTINCT A.product_id AS product1, B.product_id AS product2
FROM Orders A
JOIN Orders B 
  ON A.customer_id = B.customer_id AND A.product_id < B.product_id;

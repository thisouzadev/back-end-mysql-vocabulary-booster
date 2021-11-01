SELECT Country AS País
FROM w3schools.suppliers
UNION SELECT Country as País
FROM w3schools.customers
ORDER BY País
LIMIT 5;

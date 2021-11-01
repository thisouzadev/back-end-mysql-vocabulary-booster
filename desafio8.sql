SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate As `Data do pedido`
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperName in ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC
-- Question: Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table

SELECT
	p.product_name, s.company_name, c.category_name
FROM categories c 
join products p 
on 	
	p.category_id = c.category_id
join suppliers s 
on
	s.supplier_id = p.supplier_id

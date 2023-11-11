SELECT 
	p.[Name] AS "p_name"
	,c.[Name] AS "c_name"
FROM 
	[dbo].[Products] p
LEFT JOIN [dbo].[ProductCategories] pc 
	ON p.[Id] = pc.[ProductId]
LEFT JOIN [dbo].[Categories] c 
	ON pc.[CategoryId] = c.[Id]
ORDER BY p.[Name];
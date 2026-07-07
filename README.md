### Task Overview
This repository contains a small PostgreSQL database used by an internal support team to look up customer records. The database is fully deployed and populated for you, but one of the key customer lookup queries is not meeting the business needs because it returns too many rows and does not apply the right filters. Your job is to write a corrected query that returns only the most relevant customers for the support team.

### Objectives
- Write a SELECT query that returns a focused list of customers for the support team.
- Ensure the query filters customers correctly by city or email domain.
- Ensure inactive customers are excluded from the result.
- Ensure only customers with a non-empty phone number are included.
- Return only the specified columns relevant to the support workflow.
- Order results so that the most recently updated customers appear first.
- Limit the number of rows returned so the support team sees only the most relevant records.

### How to Verify
- Connect to the database and inspect the customers and cities tables to understand their structure.
- Run the existing queries in sample_queries.sql to see the current behavior and why it does not match the business needs.
- Run your new SELECT query and verify that it returns only active customers matching the required filters, with the correct columns, ordering, and row limit.

### Helpful Tips
- Consider which columns the support team actually needs to see when quickly identifying a customer.
- Think about how to combine multiple conditions in a WHERE clause.
- Explore the relationship between customers and cities to understand how to display the city name.
- Review basic SELECT, WHERE, ORDER BY, LIMIT, and simple JOIN syntax before writing your final query.

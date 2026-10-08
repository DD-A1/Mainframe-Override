--Get the username of the person who made the post about EmptyStack in forum_posts.

1. SELECT author, title, date FROM forum_posts WHERE content ILIKE '%EmptyStack%' AND content ILIKE '%dad%' AND date >= '2048-04-01' AND date < '2048-05-01';


--Get the last name of the person associated with that username in forum_accounts.
2. SELECT username, first_name, last_name FROM forum_accounts WHERE username = 'smart-money-44';

--Find all other accounts with the same last name.
3. SELECT username, first_name, last_name FROM forum_accounts WHERE last_name = 'Steele';

--Find all accounts in emptystack_accounts with the same last name.
4. SELECT username, first_name, last_name FROM emptystack_accounts WHERE last_name = 'Steele';

--There will only be one EmptyStack employee with a forum account. Use their credentials to access node mainframe, which will output a new sql file for you to run.
5. Andrew Steele
    SELECT * FROM emptystack_accounts WHERE username = 'triple-cart-38';
    triple-cart-38 | password456 | Andrew      | Steele

--Find the message in emptystack_messages that mentions a project involving self-driving taxis. That message is sent from an admin account and also reveals the project code.
6. SELECT *FROM emptystack_messages WHERE subject = 'Project TAXI';

--Get the credentials for the admin account from emptystack_accounts.
7. SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';


--Get the ID of the project from emptystack_projects.
8. SELECT * FROM emptystack_projects WHERE code = 'TAXI';

--Use that information to stop the project: node mainframe -stop!
9. node mainframe -stop
WARNING: admin access required. Unauthorized access will be logged.
Username: your-boss-99
Password: notagaincarter
Welcome, your-boss-99.
Project ID: DczE0v2b
Initiating project shutdown sequence...
5...
4...
3...
2...
1...
Project shutdown complete.
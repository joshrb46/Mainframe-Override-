--Found allthe forum post from all of april in 2048
--Found a mention of EmptyStack and their dad that works at nintendo 
SELECT content  FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';

-- The author of that post is 'smart-money-44'
SELECT *
FROM forum_accounts
WHERE username = 'smart-money-44';

-- The full name of 'smart-money-44' is 'Brad Steele'.
-- Find other forum accounts with the same last name.
SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- Find EmptyStack employees with the same last name.
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';


-- Find the message that mentions a project with self-driving taxis.
SELECT *
FROM emptystack_messages
WHERE
  body ILIKE '%taxi%'
  OR body ILIKE '%project%';

-- That message is sent from 'your-boss-99'. Let's get their password.
SELECT *
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- Their password is 'notagaincarter'.

-- Let's also get the ID of project TAXI.
SELECT *
FROM emptystack_projects
WHERE code = 'TAXI';

-- The project ID is 'DczE0v2b'.

-- Providing those credentials to `node mainframe -stop` will complete the workshop!                                             
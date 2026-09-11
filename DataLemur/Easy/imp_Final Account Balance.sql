-- Given a table containing information about bank deposits and withdrawals made using Paypal, 
-- write a query to retrieve the final account balance for each account, 
-- taking into account all the transactions recorded in the table with the assumption that there are no missing transactions.

--Solution-1 (Mine):
SELECT 
  account_id,
  SUM(
    CASE 
      WHEN transaction_type = 'Deposit' THEN amount 
      ELSE 0
    END
  ) - SUM(
    CASE
      WHEN transaction_type = 'Withdrawal' THEN amount
      ELSE 0
    END
  ) AS diff
FROM transactions
GROUP BY 
  account_id
-----------------------
--Solution-2:
SELECT
  account_id,
  transaction_type, -- Do not include this field in the final query
  CASE 
    WHEN transaction_type = 'Deposit' THEN amount
    ELSE -amount END AS balance_amount
FROM transactions;
------------------------
--Solution-3:
SELECT
    account_id,
    SUM(
        CASE
            WHEN transaction_type = 'Deposit' THEN amount
            WHEN transaction_type = 'Withdrawal' THEN -amount
        END
    ) AS final_balance
FROM transactions
GROUP BY account_id;
-------------------------
--Solution-4: (USING FILTER)
SELECT
    account_id,
    SUM(amount) FILTER (WHERE transaction_type = 'Deposit')
    -
    SUM(amount) FILTER (WHERE transaction_type = 'Withdrawal') AS final_balance
FROM transactions
GROUP BY account_id;




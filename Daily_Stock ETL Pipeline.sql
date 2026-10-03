CREATE TABLE stocks (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    open DECIMAL(10, 4),
    high DECIMAL(10, 4),
    low DECIMAL(10, 4),
    close DECIMAL(10, 4),
    UNIQUE (symbol, date)
);

SELECT*
FROM portfolio

CREATE TABLE metrics (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    moving_average_7 DECIMAL(10, 4),
    moving_average_20 DECIMAL(10, 4),
    pct_change DECIMAL(10, 4),
    UNIQUE (symbol, date)
);

CREATE TABLE portfolio (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL UNIQUE,
    portfolio_total NUMERIC(14, 4)
);

SELECT id, s.symbol, s.date, close, pct_change, portfolio_total
FROM stocks s
LEFT OUTER JOIN metrics m USING (id)
LEFT OUTER JOIN portfolio p USING (id)
GROUP BY id,pct_change,portfolio_total,s.symbol,s.date,s.close
ORDER BY date
Limit 5;

CREATE TABLE daily_stock_metrics AS
SELECT 
    s.id,
    s.symbol, 
    s.date,
    s.open,
    s.high,
    s.low, 
    s.close,
    m.moving_average_7,
    m.moving_average_20,
    m.pct_change,
    p.portfolio_total
FROM stocks s
LEFT JOIN metrics m
LEFT JOIN portfolio p
    ON s.symbol = s.symbol 
   	AND s.date = s.date

SELECT
    symbol,
    pct_change
FROM metrics
WHERE date = (SELECT MAX(date) FROM metrics)
ORDER BY pct_change ASC
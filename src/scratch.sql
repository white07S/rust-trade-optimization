SELECT
    chromosome,
    kelly,
    cum_pnl,
    w_kelly,
    num_of_trades,
    generation,
    percentage_winners
FROM trade_chromosomes
WHERE num_of_trades > 500
GROUP BY chromosome, kelly, cum_pnl, w_kelly, num_of_trades, generation, percentage_winners
ORDER BY percentage_winners DESC;


ALTER TABLE trade_signals
RENAME TO btcc_hourly_trade_signals;

ALTER TABLE trade_chromosomes
RENAME TO btcc_hourly_trade_chromosomes;


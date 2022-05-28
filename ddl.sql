DROP TABLE IF EXISTS trade_signals;
CREATE TABLE trade_signals (
    backtest_id text
,   chromosome_id uuid
,   ts integer not null
,   strategies text array
,   signals integer array
,   target_ticker text
,   hard_signal integer
,   generation integer
,   ret numeric
,   pnl numeric
);
CREATE INDEX ON trade_signals (chromosome_id, ts);

DROP TABLE IF EXISTS trade_chromosomes;
CREATE TABLE trade_chromosomes (
  backtest_id text,
  id uuid,
  target_ticker text, 
  chromosome text,
  dna integer array,
  generation int,
  chromosome_length int,
  kelly numeric,
  cum_pnl numeric,
  variance numeric,
  mean_return numeric,
  w_kelly numeric,
  num_of_trades integer,
  winning_trades integer,
  losing_trades integer,
  percentage_winners numeric,
  rank integer
);

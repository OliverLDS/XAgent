% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz_agent_template_CryptoTrader.R
\name{CryptoTraderAgent}
\alias{CryptoTraderAgent}
\title{CryptoTraderAgent: A Specialized XAgent for Crypto Trading via OKX}
\description{
This R6 class inherits from \code{XAgent} and equips it with OKX-specific trading functions.
It includes methods for market data retrieval, order placement, leverage control, backtest result viewing,
and loading local OHLCV and strategy data.
}
\section{Inheritance}{

Inherits from \code{XAgent}, and extends it with crypto trading capabilities.
}

\section{Public Methods}{

\itemize{
\item \code{run()}: Trigger autonomous agent logic.
\item \code{initialize(...)}: Constructor, also initializes empty \code{order_ids}.
\item \code{load_okxr()}: Loads OKX API wrappers for market/account/order functions.
\item \code{set_okx_candle_dir(dir)}: Set path for OKX candle data.
\item \code{get_okx_candle_rds_path(inst_id, bar)}: Get RDS path for specific instrument/bar.
\item \code{set_cdd_bt_dir(dir)}, \code{get_cdd_bt_dir()}: Set and get path for CDD backtest results.
\item \code{load_candles(inst_id, bar)}: Load saved OHLCV data from RDS.
\item \code{sync_and_save_candles(df_new, inst_id, bar)}: Sync and save new candle data to RDS.
\item \code{load_bt_summary()}: Load and sort CDD backtest summary.
\item \code{view_bt_equity_curve(inst_id, strategy)}, etc.: Open backtest charts and stats.
}
}

\section{OKX Wrappers}{

The following functions are loaded dynamically via \code{load_okxr()}:
\itemize{
\item \code{get_mark_price()}
\item \code{get_candles_okx()}, \code{get_history_candles_okx()}
\item \code{get_asset_balances()}, \code{get_account_balance()}, \code{get_account_leverage_info()}, \code{get_account_positions()}
\item \code{set_leverage()}
\item \code{place_order()}, \code{cancel_order()}, \code{close_position()}
\item \code{check_order()}, \code{check_order_pending()}
}
}

\section{Utilities}{

\itemize{
\item \code{rename_ohlcv_from_okx}: Imported from \code{okxr::standardize_ohlcv_names}.
\item \code{detect_time_gaps}: Standalone function for detecting data gaps.
}
}

\section{Super class}{
\code{\link[XAgent:XAgent]{XAgent::XAgent}} -> \code{CryptoTraderAgent}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-CryptoTraderAgent-detect_time_gaps}{\code{CryptoTraderAgent$detect_time_gaps()}}
\item \href{#method-CryptoTraderAgent-init_values}{\code{CryptoTraderAgent$init_values()}}
\item \href{#method-CryptoTraderAgent-run}{\code{CryptoTraderAgent$run()}}
\item \href{#method-CryptoTraderAgent-new}{\code{CryptoTraderAgent$new()}}
\item \href{#method-CryptoTraderAgent-set_trader_TimeZone}{\code{CryptoTraderAgent$set_trader_TimeZone()}}
\item \href{#method-CryptoTraderAgent-get_trader_TimeZone}{\code{CryptoTraderAgent$get_trader_TimeZone()}}
\item \href{#method-CryptoTraderAgent-set_okx_candle_dir}{\code{CryptoTraderAgent$set_okx_candle_dir()}}
\item \href{#method-CryptoTraderAgent-get_okx_candle_rds_path}{\code{CryptoTraderAgent$get_okx_candle_rds_path()}}
\item \href{#method-CryptoTraderAgent-load_candles}{\code{CryptoTraderAgent$load_candles()}}
\item \href{#method-CryptoTraderAgent-sync_and_save_candles}{\code{CryptoTraderAgent$sync_and_save_candles()}}
\item \href{#method-CryptoTraderAgent-set_update_time}{\code{CryptoTraderAgent$set_update_time()}}
\item \href{#method-CryptoTraderAgent-get_update_time}{\code{CryptoTraderAgent$get_update_time()}}
\item \href{#method-CryptoTraderAgent-update_new_candles}{\code{CryptoTraderAgent$update_new_candles()}}
\item \href{#method-CryptoTraderAgent-update_historical_candles}{\code{CryptoTraderAgent$update_historical_candles()}}
\item \href{#method-CryptoTraderAgent-repair_missing_candles}{\code{CryptoTraderAgent$repair_missing_candles()}}
\item \href{#method-CryptoTraderAgent-backfill_candles}{\code{CryptoTraderAgent$backfill_candles()}}
\item \href{#method-CryptoTraderAgent-set_trading_strategy}{\code{CryptoTraderAgent$set_trading_strategy()}}
\item \href{#method-CryptoTraderAgent-cancel_orders}{\code{CryptoTraderAgent$cancel_orders()}}
\item \href{#method-CryptoTraderAgent-init_trade_state}{\code{CryptoTraderAgent$init_trade_state()}}
\item \href{#method-CryptoTraderAgent-update_trade_state}{\code{CryptoTraderAgent$update_trade_state()}}
\item \href{#method-CryptoTraderAgent-update_price}{\code{CryptoTraderAgent$update_price()}}
\item \href{#method-CryptoTraderAgent-get_price}{\code{CryptoTraderAgent$get_price()}}
\item \href{#method-CryptoTraderAgent-update_public_info_tech}{\code{CryptoTraderAgent$update_public_info_tech()}}
\item \href{#method-CryptoTraderAgent-get_public_info_tech}{\code{CryptoTraderAgent$get_public_info_tech()}}
\item \href{#method-CryptoTraderAgent-clone}{\code{CryptoTraderAgent$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="add_chat_message"><a href='../../XAgent/html/XAgent.html#method-XAgent-add_chat_message'><code>XAgent::XAgent$add_chat_message()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="compose_prompt_plain"><a href='../../XAgent/html/XAgent.html#method-XAgent-compose_prompt_plain'><code>XAgent::XAgent$compose_prompt_plain()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="decay_emotion"><a href='../../XAgent/html/XAgent.html#method-XAgent-decay_emotion'><code>XAgent::XAgent$decay_emotion()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="describe_emotion"><a href='../../XAgent/html/XAgent.html#method-XAgent-describe_emotion'><code>XAgent::XAgent$describe_emotion()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="get_chats"><a href='../../XAgent/html/XAgent.html#method-XAgent-get_chats'><code>XAgent::XAgent$get_chats()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="get_config"><a href='../../XAgent/html/XAgent.html#method-XAgent-get_config'><code>XAgent::XAgent$get_config()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="get_logs"><a href='../../XAgent/html/XAgent.html#method-XAgent-get_logs'><code>XAgent::XAgent$get_logs()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="get_state"><a href='../../XAgent/html/XAgent.html#method-XAgent-get_state'><code>XAgent::XAgent$get_state()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="initial_chat_local"><a href='../../XAgent/html/XAgent.html#method-XAgent-initial_chat_local'><code>XAgent::XAgent$initial_chat_local()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="local_check_and_reply"><a href='../../XAgent/html/XAgent.html#method-XAgent-local_check_and_reply'><code>XAgent::XAgent$local_check_and_reply()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="log"><a href='../../XAgent/html/XAgent.html#method-XAgent-log'><code>XAgent::XAgent$log()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="popout_local"><a href='../../XAgent/html/XAgent.html#method-XAgent-popout_local'><code>XAgent::XAgent$popout_local()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="query_gemini"><a href='../../XAgent/html/XAgent.html#method-XAgent-query_gemini'><code>XAgent::XAgent$query_gemini()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="query_groq"><a href='../../XAgent/html/XAgent.html#method-XAgent-query_groq'><code>XAgent::XAgent$query_groq()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="randomize_emotion"><a href='../../XAgent/html/XAgent.html#method-XAgent-randomize_emotion'><code>XAgent::XAgent$randomize_emotion()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="send_email"><a href='../../XAgent/html/XAgent.html#method-XAgent-send_email'><code>XAgent::XAgent$send_email()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="send_image_TG"><a href='../../XAgent/html/XAgent.html#method-XAgent-send_image_TG'><code>XAgent::XAgent$send_image_TG()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="send_text_TG"><a href='../../XAgent/html/XAgent.html#method-XAgent-send_text_TG'><code>XAgent::XAgent$send_text_TG()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="send_text_local"><a href='../../XAgent/html/XAgent.html#method-XAgent-send_text_local'><code>XAgent::XAgent$send_text_local()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="set_config"><a href='../../XAgent/html/XAgent.html#method-XAgent-set_config'><code>XAgent::XAgent$set_config()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="set_state"><a href='../../XAgent/html/XAgent.html#method-XAgent-set_state'><code>XAgent::XAgent$set_state()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="sync_TG_chats"><a href='../../XAgent/html/XAgent.html#method-XAgent-sync_TG_chats'><code>XAgent::XAgent$sync_TG_chats()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="sync_local_user_input"><a href='../../XAgent/html/XAgent.html#method-XAgent-sync_local_user_input'><code>XAgent::XAgent$sync_local_user_input()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="tg_check_and_reply"><a href='../../XAgent/html/XAgent.html#method-XAgent-tg_check_and_reply'><code>XAgent::XAgent$tg_check_and_reply()</code></a></span></li>
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="update_mind_state"><a href='../../XAgent/html/XAgent.html#method-XAgent-update_mind_state'><code>XAgent::XAgent$update_mind_state()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-detect_time_gaps"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-detect_time_gaps}{}}}
\subsection{Method \code{detect_time_gaps()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$detect_time_gaps(df, bar_hours = 4, tolerance = 0.01)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-init_values"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-init_values}{}}}
\subsection{Method \code{init_values()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$init_values()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-run"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-run}{}}}
\subsection{Method \code{run()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$run()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-new"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$new(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-set_trader_TimeZone"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-set_trader_TimeZone}{}}}
\subsection{Method \code{set_trader_TimeZone()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$set_trader_TimeZone(tz)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-get_trader_TimeZone"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-get_trader_TimeZone}{}}}
\subsection{Method \code{get_trader_TimeZone()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$get_trader_TimeZone()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-set_okx_candle_dir"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-set_okx_candle_dir}{}}}
\subsection{Method \code{set_okx_candle_dir()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$set_okx_candle_dir(dir)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-get_okx_candle_rds_path"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-get_okx_candle_rds_path}{}}}
\subsection{Method \code{get_okx_candle_rds_path()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$get_okx_candle_rds_path(inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-load_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-load_candles}{}}}
\subsection{Method \code{load_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$load_candles(inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-sync_and_save_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-sync_and_save_candles}{}}}
\subsection{Method \code{sync_and_save_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$sync_and_save_candles(df_new, inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-set_update_time"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-set_update_time}{}}}
\subsection{Method \code{set_update_time()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$set_update_time(inst_id, bar, update_time)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-get_update_time"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-get_update_time}{}}}
\subsection{Method \code{get_update_time()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$get_update_time(inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-update_new_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-update_new_candles}{}}}
\subsection{Method \code{update_new_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$update_new_candles(inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-update_historical_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-update_historical_candles}{}}}
\subsection{Method \code{update_historical_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$update_historical_candles(inst_id, bar, before_time)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-repair_missing_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-repair_missing_candles}{}}}
\subsection{Method \code{repair_missing_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$repair_missing_candles(
  inst_id,
  bar,
  candle_gaps,
  max_iter = 3
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-backfill_candles"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-backfill_candles}{}}}
\subsection{Method \code{backfill_candles()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$backfill_candles(inst_id, bar)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-set_trading_strategy"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-set_trading_strategy}{}}}
\subsection{Method \code{set_trading_strategy()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$set_trading_strategy(pars)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-cancel_orders"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-cancel_orders}{}}}
\subsection{Method \code{cancel_orders()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$cancel_orders(inst_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-init_trade_state"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-init_trade_state}{}}}
\subsection{Method \code{init_trade_state()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$init_trade_state(inst_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-update_trade_state"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-update_trade_state}{}}}
\subsection{Method \code{update_trade_state()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$update_trade_state(inst_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-update_price"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-update_price}{}}}
\subsection{Method \code{update_price()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$update_price(inst_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-get_price"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-get_price}{}}}
\subsection{Method \code{get_price()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$get_price(inst_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-update_public_info_tech"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-update_public_info_tech}{}}}
\subsection{Method \code{update_public_info_tech()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$update_public_info_tech(inst_id, bar, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-get_public_info_tech"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-get_public_info_tech}{}}}
\subsection{Method \code{get_public_info_tech()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$get_public_info_tech()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-CryptoTraderAgent-clone"></a>}}
\if{latex}{\out{\hypertarget{method-CryptoTraderAgent-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CryptoTraderAgent$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}

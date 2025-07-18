% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz_agent_template_news_reader.R
\name{NewsReaderAgent}
\alias{NewsReaderAgent}
\title{NewsReaderAgent: A Specialized Agent for News and Market Data}
\format{
An R6 class object.
}
\description{
Inherits from \code{XAgent} and extends its functionality with tools for:
\itemize{
\item Local file-based interaction with users
\item Fetching and parsing RSS feeds from curated sources
\item Querying FRED and AlphaVantage economic data
\item Fetching Binance cryptocurrency kline (candlestick) data
}
}
\details{
This agent is intended to operate in an autonomous or semi-autonomous reading loop,
summarizing recent developments in news, economics, and markets.

Key Methods:
\describe{
\item{\code{run()}}{Agent main loop: checks for local user input and replies.}
\item{\code{fetch_rss(rss_name)}}{Returns a parsed RSS feed for the given source name in \code{RSSlist}.}
\item{\code{fetch_fred_series(series_id)}}{Fetches macroeconomic time series from the FRED API.}
\item{\code{fetch_ts_daily_alphavantage(symbol, mode)}}{Downloads daily stock data from AlphaVantage.}
\item{\code{fetch_binance_klines(...)}}{Retrieves candlestick data from Binance Futures API. Timezone is auto-set from agent.}
}
}
\section{Super class}{
\code{\link[XAgent:XAgent]{XAgent::XAgent}} -> \code{NewsReaderAgent}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-NewsReaderAgent-run}{\code{NewsReaderAgent$run()}}
\item \href{#method-NewsReaderAgent-fetch_rss}{\code{NewsReaderAgent$fetch_rss()}}
\item \href{#method-NewsReaderAgent-fetch_fred_series}{\code{NewsReaderAgent$fetch_fred_series()}}
\item \href{#method-NewsReaderAgent-fetch_ts_daily_alphavantage}{\code{NewsReaderAgent$fetch_ts_daily_alphavantage()}}
\item \href{#method-NewsReaderAgent-fetch_binance_klines}{\code{NewsReaderAgent$fetch_binance_klines()}}
\item \href{#method-NewsReaderAgent-clone}{\code{NewsReaderAgent$clone()}}
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
<li><span class="pkg-link" data-pkg="XAgent" data-topic="XAgent" data-id="initialize"><a href='../../XAgent/html/XAgent.html#method-XAgent-initialize'><code>XAgent::XAgent$initialize()</code></a></span></li>
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
\if{html}{\out{<a id="method-NewsReaderAgent-run"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-run}{}}}
\subsection{Method \code{run()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$run()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NewsReaderAgent-fetch_rss"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-fetch_rss}{}}}
\subsection{Method \code{fetch_rss()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$fetch_rss(rss_name)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NewsReaderAgent-fetch_fred_series"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-fetch_fred_series}{}}}
\subsection{Method \code{fetch_fred_series()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$fetch_fred_series(series_id)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NewsReaderAgent-fetch_ts_daily_alphavantage"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-fetch_ts_daily_alphavantage}{}}}
\subsection{Method \code{fetch_ts_daily_alphavantage()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$fetch_ts_daily_alphavantage(symbol, mode)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NewsReaderAgent-fetch_binance_klines"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-fetch_binance_klines}{}}}
\subsection{Method \code{fetch_binance_klines()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$fetch_binance_klines(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NewsReaderAgent-clone"></a>}}
\if{latex}{\out{\hypertarget{method-NewsReaderAgent-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NewsReaderAgent$clone(deep = FALSE)}\if{html}{\out{</div>}}
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

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tool_gemini.R
\name{query_gemini}
\alias{query_gemini}
\title{Query the Google Gemini API with a Prompt}
\usage{
query_gemini(prompt, config)
}
\arguments{
\item{prompt}{A character string representing the prompt to send to the model.}

\item{config}{A named list containing the model parameters and API key:
\describe{
\item{\code{api_key}}{Your Gemini API key.}
\item{\code{model}}{Model name, e.g., \code{"gemini-2.5-flash"}.}
\item{\code{temperature}}{Sampling temperature.}
\item{\code{top_p}}{Nucleus sampling threshold.}
\item{\code{top_k}}{Top-k sampling size.}
\item{\code{max_tokens}}{(Optional) Maximum number of tokens to generate.}
}}
}
\value{
A character string containing the model's response.
}
\description{
Sends a user-defined prompt to the Gemini language model via Google’s Generative Language API.
The model configuration (e.g., temperature, top_p, etc.) is passed via the \code{config} list.
}
\details{
This function supports model options such as:
\itemize{
\item \code{temperature}: Sampling temperature
\item \code{topP}: Nucleus sampling threshold
\item \code{topK}: Top-k filtering
\item \code{max_tokens} (optional): Maximum output tokens
}
}
\examples{
config <- tool_set_config("gemini")
query_gemini("What is the capital of Japan?", config)

}

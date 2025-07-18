#' Query the Groq API with a Prompt
#'
#' Sends a prompt to the Groq-hosted LLM (e.g., llama3-70b-8192) using the OpenAI-compatible API format.
#' This function assumes a standard completion interface similar to OpenAI’s chat completion endpoint.
#'
#' @param prompt A character string containing the prompt text for the model.
#' @param config A named list with Groq configuration parameters:
#' \describe{
#'   \item{\code{api_key}}{Your Groq API key (as a string).}
#'   \item{\code{url}}{Groq API endpoint (e.g., \code{"https://api.groq.com/openai/v1/chat/completions"}).}
#'   \item{\code{model}}{Model name to use, such as \code{"llama3-70b-8192"}.}
#' }
#'
#' @return A character string with the model's generated response.
#'
#' @examples
#' config <- tool_set_config("groq")
#' query_groq("Write a haiku about LLMs.", config)
#'
#' @export
query_groq <- function(prompt, config, 
  model = c("llama-3.1-8b-instant", "llama3-8b-8192", "llama3-70b-8192", "deepseek-r1-distill-llama-70b"),
  temperature = 1.0, top_p = 1.0, max_tokens = 1024, 
  stream = FALSE) {

  model <- match.arg(model)
  api_key <- config$api_key
  url <- config$url

  body <- list(
    messages = list(list(role = "user", content = prompt)),
    model = model,
    temperature = temperature,
    top_p = top_p,
    stream = stream,
    max_tokens = max_tokens
  )

  response <- httr::POST(
    url,
    httr::add_headers(
      "Content-Type" = "application/json",
      Authorization = paste("Bearer", api_key)
    ),
    body = jsonlite::toJSON(body, auto_unbox = TRUE),
    encode = "json"
  )

  parsed <- httr::content(response, as = "parsed", encoding = "UTF-8")
  text <- parsed$choices[[1]]$message$content
  return(text)
}

# agent <- XAgent$new()
# agent$set_config('groq')
# agent$query_groq('Summarize the story of A tale of two cities.')


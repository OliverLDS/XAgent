run_xagent <- function(memory, prompt, config, max_steps = 3L) {
  new_mem <- add_message(memory, "user", prompt)
  final_mem <- call_llm(new_mem, config)
  final_mem
}

run_flow <- function(memory, config, tools = TOOL_COLLECTION, max_steps = 3L) {
  step <- 1
  while (step <= max_steps) {
    result <- call_llm(memory, config)
    memory <- result$memory
    response_text <- result$output

    if (response_text %in% names(tools)) {
      tool_func <- tools[[response_text]]
      result <- tool_func(memory)
      memory <- result$memory
      if (response_text == "terminate") break
    }

    step <- step + 1
  }
  memory
}


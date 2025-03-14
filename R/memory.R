create_memory <- function() {
  list(messages = list())
}

add_message <- function(memory, role, content) {
  new_messages <- c(memory$messages, list(list(role = role, content = content)))
  list(messages = new_messages)
}

get_recent_messages <- function(memory, n = 5) {
  if (length(memory$messages) == 0) return(list())
  tail(memory$messages, n)
}

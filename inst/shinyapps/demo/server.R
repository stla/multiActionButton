shinyServer(
  function(input, output, session){

    output[["buttons"]] <- renderPrint({
      states <- c(
        paste0("user-plus: ", input[["user-plus"]]),
        paste0("library: ",   input[["library"]]),
        paste0("alarm: ",     input[["alarm"]]),
        paste0("power: ",     input[["power"]]),
        paste0("lock: ",      input[["lock"]])
      )
      cat(states, sep = "\n")
    })

  }
)

shinyUI(
  fluidPage(

    tags$head(
      tags$style(HTML(css))
    ),

    br(),

    multiActionButton(
      rotate = TRUE,
      bg = "darkMagenta",
      fg = "white",
      icon = "plus",
      direction = "right",
      subButtons = list(
        subButton(
          "user-plus", bg = "blue",   icon = "user-plus"
        ),
        subButton(
          "library",   bg = "teal",   icon = "library"
        ),
        subButton(
          "alarm",     bg = "pink",   icon = "alarm"
        ),
        subButton(
          "power",     bg = "lime",   icon = "power"
        ),
        subButton(
          "lock",      bg = "orange", icon = "lock"
        )
      )
    ),

    br(), br(), br(),

    tags$fieldset(
      tags$legend("Buttons states"),
      verbatimTextOutput("buttons")
    )

  )
)

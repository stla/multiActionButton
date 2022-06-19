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
          "user-plus", bg = "blue",   icon = "user-plus", iconSize = "3x"
        ),
        subButton(
          "library",   bg = "teal",   icon = "library",   iconSize = "3x"
        ),
        subButton(
          "alarm",     bg = "pink",   icon = "alarm",     iconSize = "3x"
        ),
        subButton(
          "power",     bg = "lime",   icon = "power",     iconSize = "3x"),
        subButton(
          "lock",      bg = "orange", icon = "lock",      iconSize = "3x"
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

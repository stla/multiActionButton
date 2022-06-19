shinyUI(
  fluidPage(
    tags$fieldset(
      tags$legend(
        h1(style = "display: inline-block;", "Metro UI colors"),
        helpText(
          style = "display: inline-block;",
          "(hover the buttons to see the color names)"
        )
      ),
      do.call(tagList, apply(colorsChunks, 1L, function(chunk){
        div(multiActionButton(
          rotate = TRUE, bg = "black", fg = "white", icon = "plus",
          direction = "right",
          subButtons = lapply(chunk, function(color){
            subButton(
              color, bg = color, icon = "plus", iconSize = "3x",
              tooltip = color
            )
          })
        ))
      }))
    ),
    tags$script(HTML("$('.multi-action>button').addClass('active')"))
  )
)

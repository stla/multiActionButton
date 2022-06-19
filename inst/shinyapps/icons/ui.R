shinyUI(
  fluidPage(
    tags$fieldset(
      tags$legend(
        h1(style = "display: inline-block;", "Metro UI icons"),
        helpText(
          style = "display: inline-block;",
          "(hover the icons to see their name)"
        )
      ),
      do.call(tagList, apply(iconsChunks, 1L, function(chunk){
        div(multiActionButton(
          rotate = TRUE, bg = "teal", fg = "white", icon = "plus",
          direction = "right",
          subButtons = lapply(chunk, function(icon){
            subButton(
              icon, bg = "darkRed", icon = icon, tooltip = icon
            )
          })
        ))
      }))
    ),
    tags$script(HTML("$('.multi-action>button').addClass('active')"))
  )
)

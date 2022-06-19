#' Sub-button
#' @description Creates a sub-button for usage in
#'   \code{\link{multiActionButton}}.
#'
#' @param id button id
#' @param bg background color of the button
#' @param fg color of the icon
#' @param icon icon name
#' @param iconSize icon size, can be \code{"lg"}, \code{"2x"}, \code{"3x"},
#'   \code{"4x"} or \code{"5x"}
#' @param tooltip character string to be shown as tooltip
#' @param onclick the \code{onclick} attribute of the button
#'
#' @return A \code{shiny.tag} object for usage in
#'   \code{\link{multiActionButton}}.
#'
#' @importFrom htmltools tags
#' @export
subButton <- function(
  id, bg = NULL, fg = NULL, icon = NULL, iconSize = "3x",
  tooltip = NULL, onclick = NULL
){
  bg <- if(!is.null(bg)) match.arg(bg, mui.bgcolors())
  fg <- if(!is.null(fg)) match.arg(fg, mui.fgcolors())
  if(!is.null(icon)){
    icon <- match.arg(icon, mui.icons())
    icon <- sprintf("mif-%s", icon)
    iconSize <- match.arg(iconSize, c("lg", "2x", "3x", "4x", "5x"))
    iconSize <- sprintf("mif-%s", iconSize)
  }
  tags$li(
    class = paste0(sprintf("bg-%s ", bg), sprintf("fg-%s", fg)),
    tags$a(
      id = id,
      href = "#",
      class = "action-button mui-action-button",
      onclick = onclick,
      tags$span(
        class = sprintf("%s %s", icon, iconSize),
        title = tooltip
      )
    )
  )
}


#' Multi action button
#' @description Multi action button for usage in a Shiny UI.
#'
#' @param rotate logical, whether to rotate the icon upon clicking the main
#'   button
#' @param bg background color of the button
#' @param fg color of the icon
#' @param icon icon name
#' @param direction the opening direction, \code{"top"}, \code{"right"},
#'   \code{"bottom"}, or \code{"left"}
#' @param subButtons a list of buttons created with \code{\link{subButton}}
#'
#' @return A \code{shiny.tag} object to be included in a Shiny UI.
#'
#' @importFrom htmltools tags htmlDependency attachDependencies
#' @export
#'
#' @examples
#' if(interactive()){
#'   shinyMUIdemo()
#' }
multiActionButton <- function(
  rotate = TRUE, bg = NULL, fg = NULL, icon = NULL,
  direction = "right", subButtons
){
  rotate <- ifelse(rotate, "rotate-minus ", "")
  bg <- if(!is.null(bg)) match.arg(bg, mui.bgcolors())
  fg <- if(!is.null(fg)) match.arg(fg, mui.fgcolors())
  icon <- if(!is.null(icon)) sprintf("mif-%s", match.arg(icon, mui.icons()))
  direction <- match.arg(direction, c("top", "right", "bottom", "left"))
  ultag <- function(...){
    tags$ul(
      class = sprintf("actions drop-%s", direction),
      ...
    )
  }
  tag <- tags$div(
    class = "multi-action",
    tags$button(
      class = paste0(
        "action-button mui-action-button ",
        rotate,
        sprintf("bg-%s ", bg),
        sprintf("fg-%s", fg)
      ),
      onclick = "$(this).toggleClass('active')",
      tags$span(
        class = "icon",
        tags$span(class = icon)
      )
    ),
    do.call(ultag, subButtons)
  )
  dep <- htmlDependency(
    name = "metroUI",
    version = "4.3.10",
    src = "www",
    stylesheet = c(
      "css/mui.css",
      "css/metro-colors.min.css",
      "css/metro-icons.min.css"
    ),
    package = "multiActionButton",
    all_files = TRUE
  )
  attachDependencies(tag, dep)
}


#' Shiny app: multi action button
#' @description Shiny app demonstrating the multi action button.
#'
#' @return No returned value, this function just runs a Shiny app.
#'
#' @importFrom shiny shinyAppDir
#' @export
shinyMUIdemo <- function(){
  appDir <- system.file("shinyapps", "demo", package = "multiActionButton")
  shinyAppDir(appDir, options = list(display.mode = "showcase"))
}

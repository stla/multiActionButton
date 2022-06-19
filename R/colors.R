#' Metro UI colors
#' @description Returns the vector of available colors.
#'
#' @return The vector of available colors.
#' @export
#' @rdname mui-colors
mui.bgcolors <- function(){
  c("transparent", "facebook", "twitter", "github", "bootstrap",
    "gitlab", "amazon", "black", "white", "dark", "light", "grayBlue",
    "grayWhite", "grayMouse", "brandColor1", "brandColor2", "lime",
    "green", "emerald", "blue", "teal", "cyan", "cobalt", "indigo",
    "violet", "pink", "magenta", "crimson", "red", "orange", "amber",
    "yellow", "brown", "olive", "steel", "mauve", "taupe", "gray",
    "lightLime", "lightGreen", "lightEmerald", "lightBlue", "lightTeal",
    "lightCyan", "lightCobalt", "lightIndigo", "lightViolet", "lightPink",
    "lightMagenta", "lightCrimson", "lightRed", "lightOrange", "lightAmber",
    "lightYellow", "lightBrown", "lightOlive", "lightSteel", "lightMauve",
    "lightTaupe", "lightGray", "lightGrayBlue", "darkLime", "darkGreen",
    "darkEmerald", "darkBlue", "darkTeal", "darkCyan", "darkCobalt",
    "darkIndigo", "darkViolet", "darkPink", "darkMagenta", "darkCrimson",
    "darkRed", "darkOrange", "darkAmber", "darkYellow", "darkBrown",
    "darkOlive", "darkSteel", "darkMauve", "darkTaupe", "darkGray",
    "darkGrayBlue")
}

#' @rdname mui-colors
#' @export
mui.fgcolors <- function(){
  c("black", "white", "dark", "light", "grayBlue", "grayWhite",
    "grayMouse", "brandColor1", "brandColor2", "lime", "green", "emerald",
    "blue", "teal", "cyan", "cobalt", "indigo", "violet", "pink",
    "magenta", "crimson", "red", "orange", "amber", "yellow", "brown",
    "olive", "steel", "mauve", "taupe", "gray", "lightLime", "lightGreen",
    "lightEmerald", "lightBlue", "lightTeal", "lightCyan", "lightCobalt",
    "lightIndigo", "lightViolet", "lightPink", "lightMagenta", "lightCrimson",
    "lightRed", "lightOrange", "lightAmber", "lightYellow", "lightBrown",
    "lightOlive", "lightSteel", "lightMauve", "lightTaupe", "lightGray",
    "lightGrayBlue", "darkLime", "darkGreen", "darkEmerald", "darkBlue",
    "darkTeal", "darkCyan", "darkCobalt", "darkIndigo", "darkViolet",
    "darkPink", "darkMagenta", "darkCrimson", "darkRed", "darkOrange",
    "darkAmber", "darkYellow", "darkBrown", "darkOlive", "darkSteel",
    "darkMauve", "darkTaupe", "darkGray", "darkGrayBlue")
}

#' Shiny app: metro UI background colors
#' @description Launch a shiny app showing all available metro UI background colors.
#'
#' @import shiny
#' @export
shinyMUIcolors <- function(){
  appDir <- system.file("shinyapps", "colors", package = "multiActionButton")
  shinyAppDir(appDir)
}

swipe_right <- function(swiper, profile) {
  if (!profile[["has_picture"]]) {
    stop("can't decide without a picture.")
  }

  if (!profile[["picture_attractive"]]) {
    return(FALSE)
  }

  if (!swiper[["sober"]]) {
    return(TRUE)
  }

  if (all(is.na(profile[["likes"]]))) {
    stop("can't decide without informative profile.")
  }

  if (profile[["rather_weird"]]) {
    return(FALSE)
  }


  if (any(swiper[["likes"]] %in% profile[["likes"]])) {
    return(TRUE)
  }

  return(FALSE)
}

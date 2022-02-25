library(htmltools)

# <div class="card text-center" style="width: 18rem;">
#   <div class="card-body">
#     <h5 class="card-title">Special title treatment</h5>
#     <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
#     <a href="#" class="btn btn-primary">Go somewhere</a>
#   </div>
# </div>


r_col_3 <- function(...) {
  div(
    class = "r-col-3", 
    ...
  )
}

r_card <- function(h = "header", content = "content") {
  div(class="card text-center", style="width: 18rem;", 
      div(class="card-body",
          h5(class="card-title", h),
          p(class="card-text", content),
          a(href="#", class="btn btn-primary", "Go somewhere")
      )
  )
}


h5_if <- function(h = NULL, class) {
  if (is.null(h)) return(NULL) else {
    h5(class = class, h)
  }
}

r_col_card_img <- function(h = NULL, content = NULL, img_src = "", img_alt = "") {
  div(
    class = "r-col-card",
      div(
        class="card h-100 text-center", 
          div(
            class="card-body",
            h5_if(class="card-title", h = h),
            p(class="card-text", content),
            img(src = img_src, alt = img_alt)
          )
      )
  )
}

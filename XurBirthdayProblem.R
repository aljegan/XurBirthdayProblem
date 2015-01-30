# Just execute the code below and type "XurBirthday()"


XurBirthday <- function() {
    C <- as.numeric(unlist(strsplit(readline("How many cobinations in each period? (comma-separated): "),",")))
    k <- as.numeric(unlist(strsplit(readline("How long did each period last? (comma-separated): "),",")))
    numdiff <- 0:(sum(k) -1)
    denominator <- unlist(mapply(function(C,k) rep(C,k),C,k))
    numerator <- denominator - numdiff
    ratios <- numerator/denominator
    return(1-prod(ratios))
}


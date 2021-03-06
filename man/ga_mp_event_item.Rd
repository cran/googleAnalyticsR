% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measurement_protocol.R
\name{ga_mp_event_item}
\alias{ga_mp_event_item}
\title{Create an Measurement Protocol Item Property for an Event}
\usage{
ga_mp_event_item(
  item_id = NULL,
  item_name = NULL,
  coupon = NULL,
  discount = NULL,
  affiliation = NULL,
  item_brand = NULL,
  item_category = NULL,
  item_variant = NULL,
  price = NULL,
  currency = NULL
)
}
\arguments{
\item{item_id}{Item ID}

\item{item_name}{Item Name}

\item{coupon}{Coupon}

\item{discount}{Discount}

\item{affiliation}{Affiliation}

\item{item_brand}{Brand}

\item{item_category}{Category}

\item{item_variant}{Variant}

\item{price}{Price}

\item{currency}{Currency}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
Some events work with item properties
}
\examples{
# one item
ga_mp_event_item(item_name = "jeggings", 
                 price = 8.88, 
                 item_variant = "Black")
                 
# many items in a list
items <- list(
  ga_mp_event_item(item_id = "SKU_12345", 
                   price = 9.99, 
                   item_brand = "Gucci"), 
  ga_mp_event_item(item_name = "jeggings", 
                   price = 8.88, 
                   item_variant = "Black"))
                   
# construct an event with its own fields
ga_mp_event("add_payment_info", 
            params = list(coupon = "SUMMER_FUN", 
                          payment_type = "Credit Card", 
                          value = 7.77, 
                          currency = "USD"), 
            items = items)
}
\seealso{
Other Measurement Protocol functions: 
\code{\link{ga_mp_cid}()},
\code{\link{ga_mp_event}()},
\code{\link{ga_mp_send}()}
}
\concept{Measurement Protocol functions}

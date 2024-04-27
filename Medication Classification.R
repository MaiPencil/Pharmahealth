#' Medication S3 Class
#'
#' An S3 class representing medication information.
#'
#' @slot name The name of the medication.
#' @slot dosage The dosage of the medication.
#' @slot units The units of the dosage.
#' @export
setClass("Medication",
         slots = c(
           name = "character",
           dosage = "numeric",
           units = "character"
         ))

#' Create a Medication object
#'
#' Creates a new Medication object.
#'
#' @param name The name of the medication.
#' @param dosage The dosage of the medication.
#' @param units The units of the dosage.
#' @return An object of class Medication.
#' @export
Medication <- function(name, dosage, units) {
  new("Medication", name = name, dosage = dosage, units = units)
}

#' Print method for Medication objects
#'
#' Prints information about a Medication object.
#'
#' @param x A Medication object.
#' @export
print.Medication <- function(x) {
  cat("Medication:", x@name, "\n")
  cat("Dosage:", x@dosage, x@units, "\n")
}

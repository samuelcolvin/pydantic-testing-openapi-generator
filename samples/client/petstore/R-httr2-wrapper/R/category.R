#' OpenAPI Petstore
#'
#' This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#'
#' The version of the OpenAPI document: 1.0.0
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Category
#' @description Category Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Category <- R6::R6Class(
  "Category",
  public = list(
    `id` = NULL,
    `name` = NULL,
    #' Initialize a new Category class.
    #'
    #' @description
    #' Initialize a new Category class.
    #'
    #' @param id id
    #' @param name name
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `id` = NULL, `name` = NULL, ...
    ) {
      if (!is.null(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Category in JSON format
    #' @export
    toJSON = function() {
      CategoryObject <- list()
      if (!is.null(self$`id`)) {
        CategoryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CategoryObject[["name"]] <-
          self$`name`
      }

      CategoryObject
    },
    #' Deserialize JSON string into an instance of Category
    #'
    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Category in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Category
    #'
    #' @description
    #' Deserialize JSON string into an instance of Category
    #'
    #' @param input_json the JSON input
    #' @return the instance of Category
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },
    #' Validate JSON input with respect to Category
    #'
    #' @description
    #' Validate JSON input with respect to Category and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Category
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      if (!str_detect(self$`name`, "^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*[a-zA-Z0-9]+$")) {
        return(FALSE)
      }

      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      if (!str_detect(self$`name`, "^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*[a-zA-Z0-9]+$")) {
        invalid_fields["name"] <- "Invalid value for `name`, must conform to the pattern ^[a-zA-Z0-9]+[a-zA-Z0-9\\.\\-_]*[a-zA-Z0-9]+$."
      }

      invalid_fields
    }
  )
)


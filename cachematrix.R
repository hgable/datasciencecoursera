## Put comments here that give an overall description of what your
## functions do - Hannah's assignment

## This function creates the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<- function(y) {
    x<<-y
    m<<-NULL 
  }
  get <- function() x
  setsolve<- function(solve) m <<- mean
  getsolve<- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## This function computes the inverse of the special matrix returned by the function above

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
          message("getting cached data")
          return (m)
        }
        data <- solve(data, ...)
        x$setsolve(m)
        m
}

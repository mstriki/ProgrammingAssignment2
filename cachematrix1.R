## [Put comments here that describe what your functions do]

makeCacheMatrix <- function(x = matrix()) {
       m <- NULL
       set <- function (y)  {
              x <<- y
              m <<- NULL
       }
       
       get <- function() x
       setInv <- function(solve) m <<- solve
       getInv <- function() m
       list (set = set, get = getl setInv = setInv, getInv - getInv)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInv()
        if (!is.null(m)) {
             message("getting cached data")
             return(m)
        }
        data <- x$get()
        m <-solve(data, ...)
        x$setInv(m)
        m
}

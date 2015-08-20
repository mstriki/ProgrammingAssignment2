## [Put comments here that describe what your functions do]
keep <- list(makeCacheMatrix)
makeCacheMatrix <- function(x = matrix()) {
       m <- NULL      
       set <- function(y)  {
              x <<- y
       #       nrow(x) <<- nrow(y)
        #      ncol(x) <<- ncol(y)
              m <<- NULL
              y
       }       
       get <- function() x
       setInv <- function(solve) m <<- solve
       getInv <- function() m
       list (set = set, get = get, setInv = setInv, getInv = getInv)
}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       
        if (i>1) {
        for (j in 1:(i-1)) {
             stmt <- identical(keep[[j]]$get(),x$get())
             if (stmt) {
                   x <- keep[[j]]
             }
        }
        }
        m <- x$getInv()
        if (!is.null(m)) {
             message("getting cached data")
             return(m)
        }
        
        keep[[i]] <<- x 
        i <<- i+1
        data <- x$get()
        m <- solve(data, ...)
        x$setInv(m)
        m
        message("getting non-cached data")
        print(data)
}

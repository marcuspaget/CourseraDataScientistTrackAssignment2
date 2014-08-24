## This R script provides makeCacheMatrix and cacheSolve
##
## makeCacheMatrix creates a special "matrix" object that can cache its inverse
##
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the 
## 4. get the value of the 

makeCacheMatrix <- function(x = matrix()) {
#replace
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
#replace
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

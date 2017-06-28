## Put comments here that give an overall description of what your
## functions do
## This function will create a cache of the inverse of a matrix
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invrs <- NULL
    func1 <- function(y) {
        x <<- y
        inv <<- NULL
    }
    func2 <- function() x
    setinverse <- function(inverse) invrs <<- inverse
    getinverse <- function() invrs
    list(func1=func1, func2=func2, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         invrs <- x$getinverse()
    if(!is.null(invrs)) {
        message("getting cached data.")
        return(invrs)
    }
    data <- x$func2()
    invrs <- solve(data)
    x$setinverse(inv)
    invrs
}

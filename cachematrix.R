## makeCacheMatrix creates an special object, and uses cachesolve 
## to calculate the inverse of the matrix if it has not yet been 
## calculated (pulling it snstaed from the cache calculation if so).## functions do

makeCacheMatrix <- function(x = matrix()) {
        inverse_x <- NULL
        set <- function(z) {
                x<<-y
                inverse_x <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inverse_x <<-inverse
        getinverse <- function () inverse_x
        list(set = set,get = get, setinverse = setinverse, getinverse = getinverse)
}

## CacheSolve reutns the inverse of the input matix created in the maeCacheMatrix function,
## retreiving it if it has already been calculated, and not if it has not been

cacheSolve <- function(x, ...) {
        inverse_x <- x$getinverse()
        if(!is.null(inverse_x)){
                return(inverse_x) 
        }
        else {
                inverse_x <- solve(X$get())
                x$setinverse(inverse_x)
                return(inverse_x)
        }
}

## Put comments here that give an overall description of what your
## functions do

##cacheMatrix caches a variable for a matriz and a variable for its inverse
## and contains functions to set and get the cached variables
## args: invertible numeric matrix
## returns: list of functions

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<-NULL
	}
	get <- function()x
	setinv <- function(inverse) inv <<- inverse
	getinv <- function() inv
	list(set = set, get = get, setinv = setinv, getinv = getinv)
	
	
}



## cacheSolve gets the cached matrix from makeCacheMatrix bject
## and if the cached inverse is null, it calls solve to calculate
##the inverse, otherwise returns teh existing inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
        	message("getting cached data")
        	return(inv)
        	
        }
        data <- x$get()
        inv <- solve(data,...)
        x$setinv(inv)
		inv        
}

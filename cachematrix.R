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
	setinv <- function(inverse) inv <<- inv
	getinv <- function() inv
	list(set = set, get = get, setinv = setinv, getinv = getinv)
	
	
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

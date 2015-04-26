## Function makeCacheMatrix creates a special vector that can cache its
## inverse. Function cacheSolve returns the inverse of a matrix if already
## cached. If not cached it calcutes the inverse and sets in cache 



## makeCacheMatrix function creates a special matrix that returns a list to
## 1.Set the value of the matrix
## 2.Get the value of the matrix
## 3.Set the value of the inverse of a matrix
## 4.Get the value of the inverse of a matrix

makeCacheMatrix <- function(m=matrix()) {

	i <- NULL
	## set the value of the matrix
	set <- function(y) {
		m <<- y
		i <<- NULL
	}

	## get the value of the matrix
	get <- function() i

	## set the value of the inverse of a matrix
	setinv <- function(inverse) i <<- inverse

	## get the value of the inverse of a matrix
	getinv <- funtion() i

	## return a list
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## cacheSolve function calculates the inverse of special matrix returned
## by makeCacheMatrix. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve will retrieve
## the inverse from the cache

cacheSolve <- function(m,...) {


	## get inverse of matrix m from cache
	i <- m$getinv()
	
	## if already calculated return inverse from cache
	if(!is.null(i)) {
		message("getting cached data")
		return(i)	
	}
	
	## if not already calculated, calculate inverse
	data <- m$get()
	i <- solve(data, ...)
	
	## set the value of the inverse in cache
	m$setinv(i)
	
	## return inverse of matrix m
	i
}

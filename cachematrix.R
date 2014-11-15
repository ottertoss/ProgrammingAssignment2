## Functions to return the cached matrix and it's inverse. 

## Function to cache a matrix and return it and it's inverse.
makeCacheMatrix <- function(x = matrix()) {
  ## Sets the cache value.
  set <- function(y) {
    x <<- y
  }
    
  ## Methods to return the matrix and getinverse
  get <- function() x
  getinverse <- function() solve(x)
  
  ## List of methods in function
  list (get = get, set = set, getinverse = getinverse)
}

## Function to return the solved matrix as it's inverse.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x$getinverse()
}

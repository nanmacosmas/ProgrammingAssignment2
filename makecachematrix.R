## This first part will make the cache Matrix
makeCacheMatrix <- function(x = matrix()) {
  f <- NULL
  set <- function(y){
    x <<- y
    f <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) f <<- inverse
  getInverse <- function() f 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## This is use to get the cached data
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  f <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  f <- solve(mat,...)
  x$setInverse(j)
  f
}

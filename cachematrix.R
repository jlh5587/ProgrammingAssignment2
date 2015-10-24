## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## I model this from the makeVector example in the assignment. 
## It sets the value of the matrix
## Gets the value of the matrix 
## It then sets the value of the inverse of the matrix
## Then gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  ##Create inverse matrix
  i <- NULL
  
  #Set function that sets inverse matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function
## This function gets the inverse of x and stores it in i. This works on the assumption that 
## x is inversible. If it is, it then returns the inverse of x from cached data. Otherwise, it 
## finds and caches the inverse of the data. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
          message("getting cached data.")
          return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}

## This pair of functions cache the inverse of the matrix.

## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
invert<-NULL
 set<-function(y)
 x<<-y
 invert<<-NULL
}
get<-function()x
setInverse<-function(inverse)invert<<-inverse
getInverse<-function()invert
list(set=set, get=get,
     setInverse=setInverse,
     getInverse=getInverse)


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invert<-x$getInverse()
 if(!is.null(invert)){
  message("getting cached matrix")
  return(invert)
}
data<-x$get()
 invert<-solve(data,...)
 x$setInverse(invert)
 invert

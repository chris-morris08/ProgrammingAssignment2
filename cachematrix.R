## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
  
  #the parameter passed must be an invertible matrix
  #going to return a list
  
  #first I declare the inverse variable and set it to null
  inverse_matrix = NULL
  
  set_matrix = function(y){
    #using << to assign a value to an object that will work outside of the current
    #environment
    
    x <<- y
    inverse_matrix <<- NULL
    
    
  }
  
  get = function() x
  set_inverse = function(inverse) inverse_matrix <<- inverse_matrix
  getinv = function() inverse_matrix
  list(set=set, get=get, setinv=setinv, getinv=getinv)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ##x is the output of makeCacheMatrix()
  ##will return the inverse of the original matrix that was given to makeCacheMatrix()
  
  inverse = x$getinv()
  
  #see if the inverse has already been calculated and cached and return it
  
  if(!is.null(inverse)){
      return(inv)
  }
  
  #if it hasn't then calculate it
  
  mat.data = x$get()
  inverse = solve(mat.data, ...)
  
  #set the value of the inverse
  
  x$setinv(inverse)
  
  return(inverse)
  
  
}

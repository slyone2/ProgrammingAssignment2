<<<<<<< HEAD

makeCacheMatrix <- function(x = matrix()) {
  	## Compute the inverse of the matrix returned by makeCacheMatrix
	## Updated 06102016

  m<-NULL

  	## Set the value of the vectory
  set<-function(y){
  x<<-y
  m<<-NULL
}

	## get the value of the vectory
get<-function() x

	## set vector value
setmatrix<-function(solve) m<<- solve

	## get matrix value
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
	
	## Compute inverse of matrix returned by from makeCacheMatrix function
    m<-x$getmatrix()

	## Check to see if the inverse matrix has already been calculated
    if(!is.null(m)){

    	## If so, get values from cache; skip the computation
      message("getting cached data")
      return(m)
    }

    	## Value not in cache, calculate inverse matrix and set inverse value
    matrix<-x$get()
    m<-solve(matrix, ...) 
    x$setmatrix(m)

    	## return the inverse matrix
    m
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The makeCacheMatrix function creats a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  
    ## Set the value of the vector
  set<-function(y){
    x<<-y
    m<<-NULL
  }
    ## get the value of the vector
  get<-function() x
  
    ## set the value of the vector
  setmatrix<-function(solve) m<<- solve
  
    ## get the value of the matrix
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)

}

## Write a short comment describing this function
## The cacheSolve function returns a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {

 ## Compute the inverse of the matrix returned by makeCacheMatrix
  m<-x$getmatrix()
  
    ## check to see if the inverse matrix has already been calculated
  if(!is.null(m)){
    
    ## If so, get mean from the cache; skip the computation
    message("getting cached data")
    return(m)
  }
  
  ## value not in cache. calculate the inverse and set value of the inverse
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  
  ## return inverse maxrix
  m
      
>>>>>>> 623475fbde647666fc3a354a3a5aecbe11223e98
}

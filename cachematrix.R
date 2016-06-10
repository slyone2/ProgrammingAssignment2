
makeCacheMatrix <- function(x = matrix()) {
  	## Compute the inverse of the matrix returned by makeCacheMatrix

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
}

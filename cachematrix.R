
## makeCacheMatrix creates a special"matrix"object that can cache its inverse
## creatematrix creates a list contain the following function

makecacheMatrix<-function (x=matrix()){
inve<-NULL  ## this funciton set inverse value to NULL
set<-function(y){x<<-y  ## this assign input argument to x in parent environment
inve<<-NULL} ## set the NULL to inve in parent inviroment 
get<-function() x  ##get the vector x from parent enviorment of makecacheMatrix
setinverse<-function(inverse) inve<<-inverse    ## set the input argument to  the value of inve in the parent environment
getinverse<-function() inve  ## get the value of the inve for the inverse of the matrxi
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)}

#cacheSolve computes the inverse of the "matrix" returned by makeCacheMatrix

cachesolve<-function(x,...)
{inve<-x$getinverse() ## this function get inverse of the matrix from funciton makecacheMatrix
if(!is.null(inve)){message("getting cached data") ## if inverse already computed, it will skip the inverse compution
return(inve)} ## this function will return the inverse if already exist.
data<-x$get() ## this function get the matrix which defined in makecacheMatrix
inve<-solve(data) ## if inverse has not been computed, this function compute the inverse of the matrix
x$setinverse(inve) ## this function set the computed inverse value to the catch by setinverse function which defined in makecatchMatrix.
inve} ## return inverse value




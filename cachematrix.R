
## makeCacheMatrix creates a special"matrix"object that can cache its inverse
## creatematrix creates a special"matrix"object
makeCacheMatrix <- function(x = matrix()) {
creatematrix<-function(y){
matrix(y, nrow, ncol, byrow)}


}


## cacheSolve computes the inverse of the "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeVector<-function(x=numeric()){
m<-NULL
set<-function(y){x<<-y
m<<-NULL}
get<-function() x
setmean<-function(mean) m<<-mean
getmean<-function() m
list(set = set, get = get, setmean = setmean, getmean = getmean)}
cachemean<-function(x,...)
{m<-x$getmean()
if(!is.null(m)){message("getting cached data")
return(m)} 
data<-x$get()
m<-mean(data,...)
x$setmean(m)
m}

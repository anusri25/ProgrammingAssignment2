##The cacheMatrix.R program contains functions to create a matrix, 
##and then calculate the inverse of that input matrix.
##The program contains two main functions:makeCacheMatrix and cacheSolve.escription of what your
##The first function, makeCacheMatrix creates a special "vector", which is really a list containing a function to
##set the value of the matrix
##get the value of the matrix
##set the inverse of the matrix 
##get the inverse of the matrix

##This function creates a matrix that is invertible 
##and also calculates the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
##Defining the "get" function for retrieving the input matrix
	  get <- function() x
##calculating the inverse of the input matrix and storing it in the variable m
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
##creating the list of functions
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}
m

##The cacheSolve function retrieves the inverse of the input matrix
##by using the functions defined in makeCacheMatrix. 
##The function first checks if the inverse of the matrix 
##is already stored in the cache and if it exists, it displays 
##the stored result instead of calculating it again. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getsolve()
##check if the inverse already exists in cache
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
## if inverse does not exist, calculate the inverse 
##of the input matrix using solve()
	  data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

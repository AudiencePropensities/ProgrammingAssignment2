# In this example we introduce the <<- operator which can be used to assign a value to an object in an environment that is different from the current 
# environment. Below are two functions that are used to create a special object that stores a numeric vector and cache's its mean.
# The first function, makeVector creates a special "vector", which is really a list containing a function to
# 1. set the value of the vector
# 2. get the value of the vector
# 3. set the value of the mean
# 4. get the value of the mean


makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}


makeCacheMatrix<-function(x, ...) {
        solve(x)<<-cache
        m<-cache
        m
}

cacheSolve<-function(x=list()) {
        x<-cache
        print(x)
}

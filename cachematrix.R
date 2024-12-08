## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  
  inv <- NULL  # 初始化缓存的逆矩阵

# 设置矩阵值
set <- function(y) {
  x <<- y
  inv <<- NULL  # 清除缓存
}

# 获取矩阵值
get <- function() x

# 设置逆矩阵
setInverse <- function(inverse) inv <<- inverse

# 获取逆矩阵
getInverse <- function() inv

# 返回功能列表
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  # 检查是否已缓存逆矩阵
if (!is.null(inv)) {   # 如果缓存不为空
  message("getting cached data")
  return(inv)        # 返回缓存的逆矩阵
}
data <- x$get()        # 获取原矩阵
inv <- solve(data, ...)  # 计算逆矩阵
x$setInverse(inv)      # 缓存逆矩阵
inv                    # 返回逆矩阵

        
}

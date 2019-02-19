var Redis = require('redis')
var redis = new Redis()

redis.set('test-redis-expire', 1)

// 设置过期时间 3s
redis.expire('test-redis-expire', 3)

redis.get('test-redis-expire', (err, value) => {
  console.log(value)
})

setTimeout(() => {
  redis.get('test-redis-expire', (err, value) => {
    console.log(value)
  })
}, 5000)
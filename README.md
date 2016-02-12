# Design considerations
* We could also use a subdomain for the API like `api.github.com` to give us more control for load balancing, but it's a little hard to test that on local environment so I left it namespaced under `/api`
* We could add an additional namespace for version in our routes, for example using `api/v1/cats/1` to protect users from any changes we might make to the API in the future.
* I chose to use ActiveModel::Serializer over jBuilder to avoid a performance hit from going through Rails' view generation middleware.
* Can secure the API by requiring authentication on requests. 

# Scalability
* Can cache serialized objects using ActiveModel::Serializers or by using memcached with the dalli gem.
* Can use a faster serializer like oj

HTTP Status codes:
1xx Informational
2xx Success
3xx Redirection
4xx Client Error
5xx Server Error

http://www.restapitutorial.com/httpstatuscodes.html

What is the difference between a GET request and a POST request? When might each be used.

GET requests a representation of the specified resource. Note that GET should not be used for operations that cause side-effects, such as using it for taking actionin web application. One reason for this is that GET may be used arbitrarily by robots or cralers, which should not need to consdier the side effects that a request should cause.

POST submits data to be processed to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.

COOKIES are messages that web servers pass to your web browser when you visit Internet sites. Your browser stores each message in a small file.


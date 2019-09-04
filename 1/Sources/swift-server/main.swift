import Kitura
import SwiftyJSON

let router = Router()

router.get("/") { request, response, next in
    response.send("Hello world!")
    next()
}

router.get("/movie") { request, response, next in
	let movie = JSON(["id":  1, "title": "Pulp Fiction"])
	response.send(json: movie)

	next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()

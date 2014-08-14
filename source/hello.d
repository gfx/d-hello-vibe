// written in the D programming language

import vibe.d;

shared static this() {
    auto router = new URLRouter;
    router.get("/hello", &handleRequest) ;

    auto settings = new HTTPServerSettings;
    settings.port = 2014;

    listenHTTP(settings, router);
}

void handleRequest(HTTPServerRequest req, HTTPServerResponse res) {
    res.writeBody("Hello, world!\n", "text/plain");
}

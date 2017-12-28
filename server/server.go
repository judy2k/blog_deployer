package server

import (
	"fmt"
	"html"
	"log"
	"net/http"
)

func webhookHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
}

// Serve serves the webhook.
func Serve() {
	http.HandleFunc("/webhook", webhookHandler)

	log.Fatal(http.ListenAndServe(":8080", nil))
}

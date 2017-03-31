#!/bin/bash

# use like this:
#
#    ID=123 TITLE="Harry Potter: Deathly Hallows" AUTHOR="J.K. Rowling" ./scripts/books.sh
#

# curl --include --request PATCH http://localhost:3000/books/45 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "book": {
#       "title": "an example title",
#       "author": "Rebekah"
#     }
#   }'

  curl --include --request POST "http://localhost:4741/books" \
    --header "Content-Type: application/json" \
    --data '{
      "book": {
        "title": "Journey through Curl Post Requests",
        "author": "Chris Payne"
      }
    }'

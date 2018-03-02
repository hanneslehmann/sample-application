#!/bin/bash
export SHAKEDOWN_URL=http://localhost:3000
source ../tools/shakedown.sh

shakedown POST /movies -d '{"name":"dunkirk","cover_image":"https://image.tmdb.org/t/p/w640/cUqEgoP6kj8ykfNjJx3Tl5zHCcN.jpg", "description":"world war 2 movie"}'
  description 'Post movie, should work'
  contains "dunkirk"
  status 201

shakedown GET /movies
  description 'Returns list of movies, one with dunkirk'
  contains "dunkirk"
  status 200


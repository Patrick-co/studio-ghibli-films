# Phase One Project - Build a CLI using an API 

## Project Requirements 

1. Provide a CLI
2. Your CLI application must provide access to data from a web page - find and use an API
3. The data provided must go at least one level deep - user can make a choice and then get detailed information about their choice
4. Should not be too similar to the Ruby final projects
5. Use good OO design patterns

## Starting Point 

- Locate API - the data
    - API: Studio Ghibli
    - Description: Resources from Studio Ghibli films
    - Link: https://ghibliapi.herokuapp.com/
- Base URL: https://ghibliapi.herokuapp.com
- Extension: https://ghiblia/filmspi.herokuapp.com #array of 19 studio ghibli films


## Goals of my CLI 

1. Welcome user, then prompt to either select a list, or to exit
2. If they select list, print out the list of Studio Ghibli films
3. User can select film by name to print out details of selected film
    1. Film_name 1
    2. Film_name 2
4. If user select exit, exit program

Three Classes :

CLI -> controller - what communicates with my user
API -> Gets data - bring in extrenal data and consume api, instantiate my objects
STUDIO -> Object -> where objects are created and stored for user display

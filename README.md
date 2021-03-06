# Tic-Tac-Toe

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

![cover](https://user-images.githubusercontent.com/40396070/103453801-e77acc00-4cdd-11eb-9649-5fe2fbd33114.png)

A multipler tic-tac-toe built with AdonisJS Websockets. A matching tutorial to this repo can be found [here]().

## Table of Content

- [Requirements](#Requirements)
- [Installation](#installation)
- [Project Architecture](#Project-Architecture)
  - [Controllers](#Controllers)
  - [Frontend](#Frontend)
- [Contributing](#contributing)
- [Licence](#Licence)

## Requirements

This project requires local installations of the following

- [Node.js](https://nodejs.org)
- [Redis](https://redis.io/topics/quickstart#installing-redis)

## Installation

Step 1: Clone the repo

```bash
git clone https://github.com/vicradon/tic-tac-toe
```

Step 2: Install dependencies

```bash
$ npm i
```

Step 3: Start the Redis server

```bash
$ redis-server
```

Step 3: In another terminal, start the Adonis server

```bash
$ adonis serve --dev
```

## Project Architecture

### Controllers

The controllers contain the bulk of the business logic of the app.

1. The [GameController.js](/app/Controllers/Http/GameController.js) deals with game initialization and rendering the game view
2. The [UserController.js](/app/Controllers/Http/UserController.js) deals with setting and resetting usernames
3. The [TicTacToeController.js](/app/Controllers/Http/TicTacToeController.js) is a web socket controller that deals with the game state, logic and rounds.

### Frontend

The project follows an MVC architecture. Views are written using Adonis edge. The project uses pure javascript and bootstrap 5.

## Docker Setup

![docker](https://user-images.githubusercontent.com/40396070/104172582-ce23ff00-5404-11eb-8ce5-d98e017e089f.png)

If you have docker locally, you can build the app's image using docker-compose.

> Note, You can still use the project without Docker.

### Steps

1. Copy the .docker.env.example file to a .docker.env file

```bash
cp .docker.env.example .docker.env up -d
```

2. Add an APP_KEY (from adonis key:generate) and a REDIS_PASSWORD to the .docker.env file

3. Run the docker-compose with the .env file

```bash
docker-compose --env-file .docker.env up -d
```

## Contributing

Feel free to open an issue if you notice any error in the code.

## Licence

[MIT](/LICENCE)

This repo is licenced under the MIT Licence.
Copyright &copy; 2021, Osinachi Chukwujama

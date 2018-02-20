josh = User.create(id: 1, name: "Josh")
sal = User.create(id: 2, name: "Sal")

game = Game.create(player_1: josh, player_2: sal)

josh.plays.create(game: game, word: "sal", score: 3)
josh.plays.create(game: game, word: "zoo", score: 12)
sal.plays.create(game: game, word: "josh", score: 14)
sal.plays.create(game: game, word: "no", score: 2)

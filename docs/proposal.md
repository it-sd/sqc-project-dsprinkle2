# The Woods: A Horror Choose Your Own Adventure Game with mod.io API key Authentication

Get ready for a heart-pounding and spine-tingling gaming experience with The Woods, a horror-themed choose your own adventure game. Set in a creepy and ominous forest, players must navigate through a series of choices that determine the outcome of their journey. With every decision, the tension builds and the fear factor increases, making this game perfect for horror fans.

The game utilizes [mod.io](https://mod.io) with authentication type API key to store character information such as items collected, number of times the player may have been killed, and the most common choices made by players. After each play-through, the game displays the percentage of players who made each choice, allowing you to see how your decisions compare to others. With the ability to change the story and add new elements, The Woods is a constantly evolving and suspenseful experience that will keep you on the edge of your seat. So grab your flashlight and get ready to face your fears in The Woods, a choose your own adventure game that is not for the faint of heart.

## Database Use

The database for the website will require several tables to store different types of information. The main tables that will be needed are:

1. Player Information: This table will store the information of each player, such as their username, password, and the choices they made in the game.

2. Game Information: This table will store information about the game, such as the story, choices, and different endings.

3. Item Information: This table will store information about the items that the player can pick up in the game, such as weapons, keys, and other useful items.

4. Statistics: This table will store statistics about the game, such as the most common choices made by players, the number of times a player has died, and the number of endings reached.

The relationship between these tables is as follows:

- The Player Information table will have a one-to-many relationship with the Statistics table, meaning that each player will have multiple statistics.
- The Game Information table will have a many-to-many relationship with the Item Information table, meaning that each game will have multiple items and each item can be in multiple games.

## Initial Designs

The initial design of the website will include a landing page with a login option for registered players, and a sign up option for new players. The game interface will consist of a visual representation of the player's choices, items collected, and statistics. A sample layout and site map of the website are shown below:

![Page Layout](sqc-project-dsprinkle2\docs\Page Layout.png)

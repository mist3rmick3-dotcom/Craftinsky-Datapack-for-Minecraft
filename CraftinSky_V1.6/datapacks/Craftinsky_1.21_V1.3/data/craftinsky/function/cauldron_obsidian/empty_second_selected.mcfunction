item replace entity @s weapon.mainhand with minecraft:bucket 1
tag @e[type=interaction,tag=co_second_interaction,distance=..6] add co_consumed
kill @e[type=interaction,tag=co_second_interaction,tag=co_consumed,distance=..6]

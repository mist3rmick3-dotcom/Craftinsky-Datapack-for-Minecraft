tellraw @a {"text":"[co debug] second interaction clicked","color":"aqua"}
execute as @e[type=interaction,tag=co_second_interaction,distance=..6] at @s run function craftinsky:cauldron_obsidian/on_second_click
advancement revoke @s only craftinsky:cauldron/second_click
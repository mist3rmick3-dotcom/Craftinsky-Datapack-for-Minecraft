execute as @a if score @s co_water_used > @s co_prev run tag @s add co_tick_click
tellraw @a[tag=co_tick_click] {"text":"[co debug] tick click detected","color":"gold"}
execute as @a[tag=co_tick_click] at @s if entity @e[type=interaction,tag=co_interaction,distance=..6] run tellraw @s {"text":"[co debug] interaction nearby","color":"gold"}
execute as @a[tag=co_tick_click] at @s if entity @e[type=interaction,tag=co_interaction,distance=..6] run clear @s minecraft:water_bucket 1
execute as @a[tag=co_tick_click] at @s if entity @e[type=interaction,tag=co_interaction,distance=..6] run give @s minecraft:empty_bucket 1
execute as @a[tag=co_tick_click] at @s if entity @e[type=interaction,tag=co_interaction,distance=..6] run execute as @e[type=interaction,tag=co_interaction,sort=nearest,limit=1,distance=..6] at @s run function craftinsky:cauldron_obsidian/convert_at_marker
execute as @a[tag=co_tick_click] run scoreboard players operation @s co_prev = @s co_water_used
tag @a remove co_tick_click

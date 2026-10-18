scoreboard players set @s co_water_count 0
execute store result score @s co_water_count if items entity @s container.* minecraft:water_bucket
execute if items entity @s weapon.offhand minecraft:water_bucket run scoreboard players add @s co_water_count 1
execute if score @s co_water_count matches 1 if entity @e[type=interaction,tag=co_second_interaction,tag=!co_consumed,distance=..6] run function craftinsky:cauldron_obsidian/empty_second_selected

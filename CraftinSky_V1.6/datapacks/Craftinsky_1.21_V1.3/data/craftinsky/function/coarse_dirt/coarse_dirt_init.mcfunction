# Détecte les coarse dirt dans l'eau et attache le timer directement à l'item
execute as @e[type=item,nbt={Item:{id:"minecraft:coarse_dirt"}},tag=!cdc_active] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s cdc_timer 0
execute as @e[type=item,nbt={Item:{id:"minecraft:coarse_dirt"}},tag=!cdc_active] at @s if block ~ ~ ~ minecraft:water run tag @s add cdc_active

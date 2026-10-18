# Si l'item quitte l'eau, on réinitialise (évite les conversions à tort)
execute as @e[type=item,tag=cdc_active] at @s unless block ~ ~ ~ minecraft:water run tag @s remove cdc_active
execute as @e[type=item,tag=cdc_active] at @s unless block ~ ~ ~ minecraft:water run scoreboard players reset @s cdc_timer

# Incrémente uniquement si l'item est toujours dans l'eau (suit les courants/sources)
execute as @e[type=item,tag=cdc_active] at @s if block ~ ~ ~ minecraft:water run scoreboard players add @s cdc_timer 1

# Effets pendant la conversion
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=..99}] at @s run particle minecraft:bubble ~ ~0.2 ~ 0.2 0.2 0.2 0.01 2
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=2}] at @s run playsound entity.generic.splash master @a[distance=..5] ~ ~ ~ 0.5 1

# Après 5 s (100 ticks) dans l'eau : conversion en dirt
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=100..}] at @s run data merge entity @s {Item:{id:"minecraft:dirt"}}
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=100..}] at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=100..}] at @s run playsound entity.player.levelup master @a[distance=..5] ~ ~ ~ 1 1
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=100..}] run tag @s remove cdc_active
execute as @e[type=item,tag=cdc_active,scores={cdc_timer=100..}] run scoreboard players reset @s cdc_timer

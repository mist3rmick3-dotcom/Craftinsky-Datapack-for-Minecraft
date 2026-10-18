# Clean up stale converters if their composter was destroyed
execute as @e[type=marker,tag=cs_convert] at @s unless block ~ ~ ~ minecraft:composter run kill @s

# Increment timer on converter markers
execute as @e[type=marker,tag=cs_convert] run scoreboard players add @s cs_mud_timer 1

# Emit particles above mud blocks during conversion (1..199 ticks)
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~ minecraft:mud run particle minecraft:enchanted_hit ~1 ~1 ~ 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~ minecraft:mycelium run particle minecraft:enchanted_hit ~1 ~1 ~ 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~ minecraft:mud run particle minecraft:enchanted_hit ~-1 ~1 ~ 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~ minecraft:mycelium run particle minecraft:enchanted_hit ~-1 ~1 ~ 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~ ~ ~1 minecraft:mud run particle minecraft:enchanted_hit ~ ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~ ~ ~1 minecraft:mycelium run particle minecraft:enchanted_hit ~ ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~ ~ ~-1 minecraft:mud run particle minecraft:enchanted_hit ~ ~1 ~-1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~ ~ ~-1 minecraft:mycelium run particle minecraft:enchanted_hit ~ ~1 ~-1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~1 minecraft:mud run particle minecraft:enchanted_hit ~1 ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~1 minecraft:mycelium run particle minecraft:enchanted_hit ~1 ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~-1 minecraft:mud run particle minecraft:enchanted_hit ~1 ~1 ~-1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~1 ~ ~-1 minecraft:mycelium run particle minecraft:enchanted_hit ~1 ~1 ~-1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~1 minecraft:mud run particle minecraft:enchanted_hit ~-1 ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~1 minecraft:mycelium run particle minecraft:enchanted_hit ~-1 ~1 ~1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~-1 minecraft:mud run particle minecraft:enchanted_hit ~-1 ~1 ~-1 0.3 0.3 0.3 0 1
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=1..11999}] at @s if block ~-1 ~ ~-1 minecraft:mycelium run particle minecraft:enchanted_hit ~-1 ~1 ~-1 0.3 0.3 0.3 0 1

# Etape 1 (5s = 100 ticks) : boue adjacente -> mycelium (y compris diagonales)
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~1 ~ ~ minecraft:mud run setblock ~1 ~ ~ minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~-1 ~ ~ minecraft:mud run setblock ~-1 ~ ~ minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~ ~ ~1 minecraft:mud run setblock ~ ~ ~1 minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~ ~ ~-1 minecraft:mud run setblock ~ ~ ~-1 minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~1 ~ ~1 minecraft:mud run setblock ~1 ~ ~1 minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~1 ~ ~-1 minecraft:mud run setblock ~1 ~ ~-1 minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~-1 ~ ~1 minecraft:mud run setblock ~-1 ~ ~1 minecraft:mycelium replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=6000}] at @s if block ~-1 ~ ~-1 minecraft:mud run setblock ~-1 ~ ~-1 minecraft:mycelium replace

# Etape 2 (10s = 200 ticks) : particules, champignons puis conversion en coarse_dirt
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 12
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~ minecraft:mycelium run summon item ~1 ~2 ~ {Item:{id:"minecraft:red_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~ minecraft:mycelium run summon item ~-1 ~2 ~ {Item:{id:"minecraft:brown_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~ ~ ~1 minecraft:mycelium run summon item ~ ~2 ~1 {Item:{id:"minecraft:red_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~ ~ ~-1 minecraft:mycelium run summon item ~ ~2 ~-1 {Item:{id:"minecraft:brown_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~1 minecraft:mycelium run summon item ~1 ~2 ~1 {Item:{id:"minecraft:red_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~-1 minecraft:mycelium run summon item ~1 ~2 ~-1 {Item:{id:"minecraft:brown_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~1 minecraft:mycelium run summon item ~-1 ~2 ~1 {Item:{id:"minecraft:brown_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~-1 minecraft:mycelium run summon item ~-1 ~2 ~-1 {Item:{id:"minecraft:red_mushroom",count:1}}
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~ minecraft:mycelium run setblock ~1 ~ ~ minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~ minecraft:mycelium run setblock ~-1 ~ ~ minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~ ~ ~1 minecraft:mycelium run setblock ~ ~ ~1 minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~ ~ ~-1 minecraft:mycelium run setblock ~ ~ ~-1 minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~1 minecraft:mycelium run setblock ~1 ~ ~1 minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~1 ~ ~-1 minecraft:mycelium run setblock ~1 ~ ~-1 minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~1 minecraft:mycelium run setblock ~-1 ~ ~1 minecraft:coarse_dirt replace
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s if block ~-1 ~ ~-1 minecraft:mycelium run setblock ~-1 ~ ~-1 minecraft:coarse_dirt replace
# Suppression du marker à la fin du cycle
execute as @e[type=marker,tag=cs_convert,scores={cs_mud_timer=12000}] at @s run kill @s

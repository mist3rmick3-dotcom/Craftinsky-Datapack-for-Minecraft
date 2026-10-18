# Renomme automatiquement toutes les lodestones au sol en Generator (sans guillemets)
execute as @e[type=item,nbt={Item:{id:"minecraft:lodestone"}}] run data merge entity @s {Item:{components:{"minecraft:custom_name":"Generator"}}}

# Détecte quand un joueur regarde une lodestone et spawn le marker centré (portée 5 blocs)
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^1.5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^3.5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^4 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^4.5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup
execute as @a at @s anchored eyes positioned ^ ^ ^5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lodestone unless entity @e[type=marker,tag=generator,distance=..1] run function craftinsky:generator/generator_setup

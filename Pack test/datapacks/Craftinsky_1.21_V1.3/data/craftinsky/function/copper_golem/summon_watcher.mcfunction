# Nettoie les marqueurs orphelins
execute as @e[type=marker,tag=copper_golem_center] at @s unless block ~ ~ ~ #minecraft:copper_chests run kill @s

# Pose des marqueurs (1..5 blocs devant) quand un joueur regarde un coffre de cuivre
execute as @a at @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:copper_chests unless entity @e[type=marker,tag=copper_golem_center,distance=..1] run summon marker ~ ~ ~ {Tags:["copper_golem_center","cg_center"]}
execute as @a at @s anchored eyes positioned ^ ^ ^2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:copper_chests unless entity @e[type=marker,tag=copper_golem_center,distance=..1] run summon marker ~ ~ ~ {Tags:["copper_golem_center","cg_center"]}
execute as @a at @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:copper_chests unless entity @e[type=marker,tag=copper_golem_center,distance=..1] run summon marker ~ ~ ~ {Tags:["copper_golem_center","cg_center"]}
execute as @a at @s anchored eyes positioned ^ ^ ^4 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:copper_chests unless entity @e[type=marker,tag=copper_golem_center,distance=..1] run summon marker ~ ~ ~ {Tags:["copper_golem_center","cg_center"]}
execute as @a at @s anchored eyes positioned ^ ^ ^5 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:copper_chests unless entity @e[type=marker,tag=copper_golem_center,distance=..1] run summon marker ~ ~ ~ {Tags:["copper_golem_center","cg_center"]}

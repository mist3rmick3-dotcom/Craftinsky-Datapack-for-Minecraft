# Génère des particules de fumée au-dessus des generators
execute as @e[type=marker,tag=generator] at @s if predicate {"condition":"minecraft:random_chance","chance":0.1} run particle smoke ~ ~0.5 ~ 0.1 0.1 0.1 0 3

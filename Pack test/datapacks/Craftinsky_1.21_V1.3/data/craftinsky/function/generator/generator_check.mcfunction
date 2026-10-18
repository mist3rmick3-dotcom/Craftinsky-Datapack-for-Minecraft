# Vérifie si la lodestone existe toujours
execute as @e[type=marker,tag=generator] at @s unless block ~ ~ ~ lodestone run function craftinsky:generator/generator_break

# Vérifie si la chiseled_tuff_bricks existe toujours
execute as @e[type=armor_stand,tag=generator_tier_2] at @s unless block ~ ~ ~ chiseled_tuff_bricks run function craftinsky:generator_tier_2/generator_break

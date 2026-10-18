# Supprime l'armor stand et les item frames si la chiseled_tuff_bricks disparaît
execute at @s run kill @e[type=item_frame,tag=generator_tier_2_frame,distance=..2]
kill @s

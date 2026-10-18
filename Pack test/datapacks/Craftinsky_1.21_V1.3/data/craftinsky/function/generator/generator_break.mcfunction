# Supprime le marker et les item frames si la lodestone disparaît
execute at @s run kill @e[type=item_frame,tag=generator_frame,distance=..2]
kill @s

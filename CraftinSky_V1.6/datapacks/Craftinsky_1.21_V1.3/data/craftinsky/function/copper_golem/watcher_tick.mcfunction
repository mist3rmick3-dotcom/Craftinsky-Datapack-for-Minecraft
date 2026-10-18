# Nettoie les marqueurs orphelins
execute as @e[type=marker,tag=copper_golem_center] at @s unless block ~ ~ ~ #minecraft:copper_chests run kill @s

# IncrÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©mente le timer de vÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©rification
execute as @e[type=marker,tag=copper_golem_center] run scoreboard players add @s cg_timer 1

# VÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©rification toutes les 100 ticks (~5s)
execute as @e[type=marker,tag=copper_golem_center,scores={cg_timer=400..}] at @s run function craftinsky:copper_golem/spawn_check

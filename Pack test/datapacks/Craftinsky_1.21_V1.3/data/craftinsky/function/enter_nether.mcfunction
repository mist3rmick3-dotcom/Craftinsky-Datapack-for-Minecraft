# Génère la plateforme et le chest uniquement au premier passage
scoreboard players add @s cs_nether_spawned 0
execute if score @s cs_nether_spawned matches 0 run function craftinsky:nether_first_setup

# Planifie le remplissage du biome après 3 secondes
schedule function craftinsky:nether_fill_delayed 3s replace

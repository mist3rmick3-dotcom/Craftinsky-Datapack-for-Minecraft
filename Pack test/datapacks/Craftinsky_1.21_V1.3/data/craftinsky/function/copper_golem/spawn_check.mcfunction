# Compte les noyes dans un rayon de 5 blocs
scoreboard players set #cg_count cg_count 0
execute if entity @e[type=minecraft:drowned,distance=..5] as @e[type=minecraft:drowned,distance=..5] run scoreboard players add #cg_count cg_count 1

# Spawn uniquement si au moins 3 noyes et pas de copper golem dans 8 blocs
execute if score #cg_count cg_count matches 3.. unless entity @e[type=minecraft:copper_golem,distance=..8] run summon minecraft:copper_golem ~ ~1 ~
execute if score #cg_count cg_count matches 3.. unless entity @e[type=minecraft:copper_golem,distance=..8] run tellraw @a[distance=..8] {"text":"Copper golem spawned","color":"green"}

# Reset du timer apres une verification
scoreboard players set @s cg_timer 0

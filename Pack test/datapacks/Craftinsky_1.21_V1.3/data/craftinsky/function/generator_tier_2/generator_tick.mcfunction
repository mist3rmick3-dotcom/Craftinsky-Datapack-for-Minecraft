# Incrémente le timer et génère une cobblestone toutes les 40 ticks (2 secondes)
execute as @e[type=armor_stand,tag=generator_tier_2] run scoreboard players add @s cs_gen_timer 1

# Joue le son de minage rapidement pendant le cycle (tous les 4 ticks)
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=4}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=8}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=12}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=16}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=20}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=24}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=28}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=32}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=36}] at @s run playsound minecraft:block.stone.hit block @a[distance=..5] ~ ~ ~ 0.3 1

# Génère une cobblestone toutes les 40 ticks
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s run playsound minecraft:block.stone.break block @a[distance=..5] ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s if block ~ ~-1 ~ hopper run execute store result score #temp cs_gen_timer run data get block ~ ~-1 ~ Items[0].count
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s if block ~ ~-1 ~ hopper if data block ~ ~-1 ~ Items[0].id run scoreboard players add #temp cs_gen_timer 1
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s if block ~ ~-1 ~ hopper if data block ~ ~-1 ~ Items[0].id run execute store result block ~ ~-1 ~ Items[0].count byte 1 run scoreboard players get #temp cs_gen_timer
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s if block ~ ~-1 ~ hopper unless data block ~ ~-1 ~ Items[0].id run data modify block ~ ~-1 ~ Items append value {id:"minecraft:cobblestone",count:1,components:{}}
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] at @s unless block ~ ~-1 ~ hopper run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @e[type=armor_stand,tag=generator_tier_2,scores={cs_gen_timer=40..}] run scoreboard players set @s cs_gen_timer 0

data remove entity @s interaction
execute at @s positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:obsidian",Count:1b},PickupDelay:20,Tags:["co_obsidian_drop"],Motion:[0.0d,0.3d,0.0d]}
execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
kill @e[type=block_display,tag=co_ghost]
kill @s

data remove entity @s interaction
execute at @s run playsound minecraft:block.netherrack.break block @a ~ ~ ~ 1 1
execute at @s positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magma_block",Count:1b},PickupDelay:20,Tags:["co_mag_magma_drop"],Motion:[0.0d,0.3d,0.0d]}
kill @e[type=block_display,tag=co_mag_ghost]
kill @s

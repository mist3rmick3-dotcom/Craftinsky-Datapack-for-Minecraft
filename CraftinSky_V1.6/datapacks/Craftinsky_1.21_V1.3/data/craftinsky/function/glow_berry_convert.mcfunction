# Convert sweet berries to glow berries when picked from bush with glowstone dust
# Tag sweet berries to convert
execute as @a[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..5] add sb_convert

# Direct conversion
execute as @e[type=item,tag=sb_convert] at @s run particle minecraft:glow ~ ~0.5 ~ 0.1 0.1 0.1 0 5
execute as @e[type=item,tag=sb_convert] at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.5 1.5
execute as @e[type=item,tag=sb_convert] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:glow_berries",count:1},Motion:[0.0,0.35,0.0]}

# Consume glowstone dust
execute as @a[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] at @s if entity @e[type=item,tag=sb_convert,distance=..5] run item modify entity @s weapon.mainhand craftinsky:reduce_count

# Kill converted sweet berries
kill @e[type=item,tag=sb_convert]

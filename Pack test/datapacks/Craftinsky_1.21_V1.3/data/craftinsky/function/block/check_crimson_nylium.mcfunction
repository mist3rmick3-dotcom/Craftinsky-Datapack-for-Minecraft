scoreboard objectives add cs_crimson_nylium_count dummy
execute store result score @s cs_crimson_nylium_count run clear @s crimson_nylium 0
execute if score @s cs_crimson_nylium_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Crimson Nylium Collector]","color":"dark_red"}]
execute if score @s cs_crimson_nylium_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_crimson_nylium_count matches ..63 run advancement revoke @s only craftinsky:block/crimson_nylium

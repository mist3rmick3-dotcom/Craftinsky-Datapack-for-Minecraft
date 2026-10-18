scoreboard objectives add cs_warped_nylium_count dummy
execute store result score @s cs_warped_nylium_count run clear @s warped_nylium 0
execute if score @s cs_warped_nylium_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Warped Nylium Collector]","color":"dark_aqua"}]
execute if score @s cs_warped_nylium_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_warped_nylium_count matches ..63 run advancement revoke @s only craftinsky:block/warped_nylium

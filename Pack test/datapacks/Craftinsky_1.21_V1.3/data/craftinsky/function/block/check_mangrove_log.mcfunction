scoreboard objectives add cs_mangrove_count dummy
execute store result score @s cs_mangrove_count run clear @s mangrove_log 0
execute if score @s cs_mangrove_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Mangrove collector]","color":"gray"}]
execute if score @s cs_mangrove_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_mangrove_count matches ..63 run advancement revoke @s only craftinsky:block/mangrove_log

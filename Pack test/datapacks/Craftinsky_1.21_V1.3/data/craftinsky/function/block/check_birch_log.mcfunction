scoreboard objectives add cs_birch_count dummy
execute store result score @s cs_birch_count run clear @s birch_log 0
execute if score @s cs_birch_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Birch collector]","color":"gray"}]
execute if score @s cs_birch_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_birch_count matches ..63 run advancement revoke @s only craftinsky:block/birch_log

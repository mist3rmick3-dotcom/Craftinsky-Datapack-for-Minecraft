scoreboard objectives add cs_clay_count dummy
execute store result score @s cs_clay_count run clear @s clay 0
execute if score @s cs_clay_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Clay Collector]","color":"gray"}]
execute if score @s cs_clay_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_clay_count matches ..63 run advancement revoke @s only craftinsky:block/clay

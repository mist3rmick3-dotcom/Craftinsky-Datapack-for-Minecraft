scoreboard objectives add cs_oak_count dummy
execute store result score @s cs_oak_count run clear @s oak_log 0
execute if score @s cs_oak_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Oak collector]","color":"gray"}]
execute if score @s cs_oak_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_oak_count matches ..63 run advancement revoke @s only craftinsky:block/oak_log

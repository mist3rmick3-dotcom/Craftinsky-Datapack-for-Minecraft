scoreboard objectives add cs_blackstone_count dummy
execute store result score @s cs_blackstone_count run clear @s blackstone 0
execute if score @s cs_blackstone_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Blackstone Collector]","color":"dark_gray"}]
execute if score @s cs_blackstone_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_blackstone_count matches ..63 run advancement revoke @s only craftinsky:block/blackstone

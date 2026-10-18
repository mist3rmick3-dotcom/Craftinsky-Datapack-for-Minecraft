scoreboard objectives add cs_pointed_dripstone_count dummy
execute store result score @s cs_pointed_dripstone_count run clear @s pointed_dripstone 0
execute if score @s cs_pointed_dripstone_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Pointed Dripstone Collector]","color":"gray"}]
execute if score @s cs_pointed_dripstone_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_pointed_dripstone_count matches ..63 run advancement revoke @s only craftinsky:block/pointed_dripstone

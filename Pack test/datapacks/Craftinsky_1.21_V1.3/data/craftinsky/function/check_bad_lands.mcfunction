execute store result score @s cs_coarse_dirt_count run clear @s coarse_dirt 0
execute if score @s cs_coarse_dirt_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Bad lands]","color":"light_purple",}]
execute if score @s cs_coarse_dirt_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_coarse_dirt_count matches ..63 run advancement revoke @s only craftinsky:bad_lands

#player_tp

tag @a[tag=!sr_observer] add sr_player
execute at @e[tag=sr_MapCenter] run spreadplayers ~ ~ 512 1024 false @a[tag=sr_player]
execute at @e[tag=sr_MapCenter] run tp @a[tag=sr_observer] ~ ~ ~


#player_setting

gamemode survival @a[tag=sr_player]
gamemode spectator @a[tag=sr_observer]
clear @a


#scoreboard_make

scoreboard objectives add sr_ingame dummy
scoreboard objectives add sr_timer dummy
scoreboard objectives add sr_timerT dummy
scoreboard objectives add sr_timerS dummy
scoreboard objectives add sr_timerM dummy
scoreboard objectives add sr_timer20 dummy
scoreboard objectives add sr_timer60 dummy
scoreboard objectives add sr_posx dummy
scoreboard objectives add sr_posy dummy
scoreboard objectives add sr_posz dummy
scoreboard objectives add sr_people dummy
scoreboard objectives add sr_together dummy

#scoreboard_set

scoreboard players set @e[tag=sr_MapCenter] sr_ingame 1
scoreboard players set @e[tag=sr_MapCenter] sr_timer20 20
scoreboard players set @e[tag=sr_MapCenter] sr_timer60 60
execute store result score @e[tag=sr_MapCenter] sr_timer run scoreboard players get @e[tag=sr_PlayCounter,limit=1] sr_timelimit
execute store result score @e[tag=sr_MapCenter] sr_posx run data get entity @e[tag=sr_MapCenter,limit=1] Pos[0]
execute store result score @e[tag=sr_MapCenter] sr_posy run data get entity @e[tag=sr_MapCenter,limit=1] Pos[1]
execute store result score @e[tag=sr_MapCenter] sr_posz run data get entity @e[tag=sr_MapCenter,limit=1] Pos[2]
execute store result score @e[tag=sr_MapCenter] sr_people run execute if entity @a[tag=sr_player]
execute store result score @e[tag=sr_MapCenter] sr_together run execute at @r run execute if entity @a[tag=sr_player,distance=..10]


#gamerule
title @a times 10 100 10
gamerule sendCommandFeedback false
gamerule keepInventory true


#spawnmarker
gamerule spawnRadius 0
execute at @a[tag=sr_player] run forceload add ~ ~
execute at @a[tag=sr_player] run spawnpoint @p ~ ~ ~
function scatter_respawn_v2:spawn_marker


#tellraw
function scatter_respawn_v2:start_tellraw
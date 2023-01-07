#playcount

scoreboard players add @e[tag=sr_PlayCounter] sr_playcount 1


#MapCenter

summon minecraft:armor_stand 0 100 0 {NoGravity:true,Marker:ture,Invisible:true,Tags:["sr_MapCenter"]}
scoreboard players operation @e[tag=sr_MapCenter] sr_playcount = @e[tag=sr_PlayCounter] sr_playcount


#spawn_marker
kill @e[tag=sr_SpawnMarker]

#bossbar
bossbar add display_timer "残り時間"
bossbar set display_timer players @a
bossbar set display_timer max 3600
bossbar set display_timer style notched_6
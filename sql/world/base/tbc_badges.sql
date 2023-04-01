/* Create alternate version of TBC Badge Vendor for pre-2.3 */
DELETE FROM `npc_vendor` WHERE `entry` = 30201;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(30201, 0, 23572, 0, 0, 1909, 0),
(30201, 0, 29266, 0, 0, 1037, 0),
(30201, 0, 29267, 0, 0, 1037, 0),
(30201, 0, 29268, 0, 0, 1037, 0),
(30201, 0, 29269, 0, 0, 1015, 0),
(30201, 0, 29270, 0, 0, 1015, 0),
(30201, 0, 29271, 0, 0, 1015, 0),
(30201, 0, 29272, 0, 0, 1015, 0),
(30201, 0, 29273, 0, 0, 1015, 0),
(30201, 0, 29274, 0, 0, 1015, 0),
(30201, 0, 29275, 0, 0, 1040, 0),
(30201, 0, 29367, 0, 0, 1015, 0),
(30201, 0, 29368, 0, 0, 1015, 0),
(30201, 0, 29369, 0, 0, 1015, 0),
(30201, 0, 29370, 0, 0, 1027, 0),
(30201, 0, 29373, 0, 0, 1015, 0),
(30201, 0, 29374, 0, 0, 1015, 0),
(30201, 0, 29375, 0, 0, 1015, 0),
(30201, 0, 29376, 0, 0, 1027, 0),
(30201, 0, 29379, 0, 0, 1015, 0),
(30201, 0, 29381, 0, 0, 1015, 0),
(30201, 0, 29382, 0, 0, 1015, 0),
(30201, 0, 29383, 0, 0, 1027, 0),
(30201, 0, 29384, 0, 0, 1015, 0),
(30201, 0, 29385, 0, 0, 1015, 0),
(30201, 0, 29386, 0, 0, 1015, 0),
(30201, 0, 29387, 0, 0, 1027, 0),
(30201, 0, 29388, 0, 0, 1642, 0),
(30201, 0, 29389, 0, 0, 1642, 0),
(30201, 0, 29390, 0, 0, 1642, 0),
(30201, 0, 30183, 0, 0, 1642, 0),
(30201, 0, 30761, 0, 0, 1454, 0),
(30201, 0, 30762, 0, 0, 1454, 0),
(30201, 0, 30763, 0, 0, 1452, 0),
(30201, 0, 30764, 0, 0, 1452, 0),
(30201, 0, 30766, 0, 0, 1454, 0),
(30201, 0, 30767, 0, 0, 1452, 0),
(30201, 0, 30768, 0, 0, 1452, 0),
(30201, 0, 30769, 0, 0, 1454, 0),
(30201, 0, 30770, 0, 0, 1452, 0),
(30201, 0, 30772, 0, 0, 1454, 0),
(30201, 0, 30773, 0, 0, 1454, 0),
(30201, 0, 30774, 0, 0, 1452, 0),
(30201, 0, 30776, 0, 0, 1454, 0),
(30201, 0, 30778, 0, 0, 1454, 0),
(30201, 0, 30779, 0, 0, 1452, 0),
(30201, 0, 30780, 0, 0, 1452, 0),
(30201, 0, 32083, 0, 0, 1040, 0),
(30201, 0, 32084, 0, 0, 1040, 0),
(30201, 0, 32085, 0, 0, 1040, 0),
(30201, 0, 32086, 0, 0, 1040, 0),
(30201, 0, 32087, 0, 0, 1040, 0),
(30201, 0, 32088, 0, 0, 1040, 0),
(30201, 0, 32089, 0, 0, 1040, 0),
(30201, 0, 32090, 0, 0, 1040, 0);

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc_t4' WHERE `entry` = 18525;
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc_pre_t4', `flags_extra` = 2, `MovementType` = 1, `unit_flags` = 256, `npcflag` = 128, `name` = "G'eras" WHERE `entry` = 30201;

DELETE FROM `creature` WHERE `guid`=350994;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(350994, 30201, 0, 0, 530, 0, 0, 1, 1, 0, -1841.98, 5471.1, 1.01826, 4.39823, 180, 0, 0, 7380, 0, 0, 0, 0, 0, '', 0);

/* G'eras only has a few 2.4 items - move them to the 2.4 Badge Vendor */
UPDATE `npc_vendor` SET `entry` = 25046 WHERE `item` IN (35326, 35324, 35321);

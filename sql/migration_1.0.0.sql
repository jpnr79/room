-- Migration for Room plugin tables
CREATE TABLE `glpi_plugin_room_rooms` (
    `id` int(11) NOT NULL auto_increment,
    `name` varchar(255) collate utf8_unicode_ci default NULL,
    `entities_id` int(11) NOT NULL default 0,
    `locations_id` int(11) NOT NULL default 0,
    `is_recursive` smallint(6) NOT NULL default 0,
    `is_deleted` smallint(6) NOT NULL default 0,
    `type` int(11) NOT NULL default 0,
    `date_mod` datetime default NULL,
    `size` smallint(6) NOT NULL default 0,
    `count_linked` smallint(6) NOT NULL default 0,
    `buy` datetime default NULL,
    `access` int(11) NOT NULL default 0,
    `printer` smallint(6) NOT NULL default 0,
    `videoprojector` smallint(6) NOT NULL default 0,
    `wifi` smallint(6) NOT NULL default 0,
    `comment` text collate utf8_unicode_ci,
    `opening` varchar(255) collate utf8_unicode_ci default NULL,
    `limits` varchar(255) collate utf8_unicode_ci default NULL,
    `text1` varchar(255) collate utf8_unicode_ci default NULL,
    `text2` varchar(255) collate utf8_unicode_ci default NULL,
    `dropdown1` int(11) NOT NULL default 0,
    `dropdown2` int(11) NOT NULL default 0,
    `tech_num` int(11) NOT NULL default 0,
    `users_id` int(11) NOT NULL default 0,
    `is_template` smallint(6) NOT NULL default 0,
    `location` smallint(6) NOT NULL default 0,
    `state` smallint(6) NOT NULL default 0,
    `manufacturers_id` smallint(6) NOT NULL default 0,
    `groups_id` smallint(6) NOT NULL default 0,
    `groups_id_tech` int(11) NOT NULL default 0 COMMENT "Group in charge of the hardware. RELATION to glpi_groups (id)",
    PRIMARY KEY (`id`),
    KEY `entities_id` (`entities_id`),
    KEY `is_deleted` (`is_deleted`),
    KEY `type` (`type`),
    KEY `name` (`name`),
    KEY `buy` (`buy`),
    KEY `dropdown1` (`dropdown1`),
    KEY `dropdown2` (`dropdown2`),
    KEY `tech_num` (`tech_num`),
    KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `glpi_plugin_room_rooms_computers` (
    `id` int(11) NOT NULL auto_increment,
    `computers_id` int(11) NOT NULL,
    `rooms_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE `computers_id` (`computers_id`),
    KEY `rooms_id` (`rooms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `glpi_plugin_room_roomtypes` (
    `id` int(11) NOT NULL auto_increment,
    `name` varchar(255) collate utf8_unicode_ci default NULL,
    `comment` text collate utf8_unicode_ci,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

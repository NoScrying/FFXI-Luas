function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle DW set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind !f12 gs c toggle Niche set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set') -- F12 = Cycle through
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind !pause input //send Nolyte /Savage Blade')
	include('BuffWatcher.lua')
	
	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1
	DW_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Niche_Index = 1
	Buff_Index = 1	
	
	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	Weapons_Set_Names = {'Naegling','Chango','Shining_One'}
	sets.weapons = {}
	sets.weapons.Naegling = {
    main="Naegling",
	sub="Blurred Shield +1",
	}
	sets.weapons.Chango = {
    main="Chango",
	sub="Utu Grip",
	}
	sets.weapons.Shining_One = {
    main="Shining One",
	sub="Utu Grip",
	}
	-- Weapons_Set_Names = {'Scythe','GreatSword','Spear','GreatKatana','Staff','Katana','Dagger','Sword','Club'} --
	-- sets.weapons = {}
	-- sets.weapons.Scythe = {
    -- main="Lost Sickle",priority=10,
	-- sub="Utu Grip",priority=1,
	-- }
	-- sets.weapons.GreatSword = {
	-- main="Goujian",priority=10,
	-- sub="Utu Grip",priority=1,
	-- }
	-- sets.weapons.Spear = {
    -- main="Iapetus",priority=10,
	-- sub="Utu Grip",priority=1,
	-- }
	-- sets.weapons.Sword = {
    -- main="Twinned Blade",priority=10,
	-- sub="Qutrub Knife",priority=1,
	-- }
	-- sets.weapons.Dagger = {
    -- main="Wind Knife",priority=10,
	-- sub="Qutrub Knife",priority=1,
	-- }
	-- sets.weapons.Katana = {
    -- main="Debahocho",priority=10,
	-- sub="Qutrub Knife",priority=1,
	-- }
	-- sets.weapons.GreatKatana = {
    -- main="Zanmato",priority=10,
	-- sub="Utu Grip",priority=1,
	-- }
	-- sets.weapons.Staff = {
    -- main="Caver's Shovel",priority=10,
	-- sub="Utu Grip",priority=1,
	-- }
	-- sets.weapons.Club = {
    -- main="Thunder Hammer",priority=10,
	-- sub="Qutrub Knife",priority=1,
	-- }
	
	Sub_Weapons_Set_Names = {'Loxotic','Montante','Chango'} --,'Dolichenus'
	sets.sub_weapons = {}
	sets.sub_weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	sub="Blurred Shield +1",
	}
	sets.sub_weapons.Montante = {
    main="Montante +1",
	sub="Utu Grip",
	}
	sets.sub_weapons.Dolichenus = {
    main="Dolichenus",
	sub="Blurred Shield +1",
	}
	sets.sub_weapons.Chango = {
    main="Chango",
	sub="Utu Grip",
	}
	
	Melee_Set_Names = {'normal','DT',"SB"}--"BrazenRush" 'DT','TH'
	sets.melee = {} 					-- Leave this empty.
	sets.melee.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	
    body="Boii Lorica +2",
	legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.melee.normal = {
    body="Boii Lorica +2",
    ammo="Coiste Bodhar",
    head="Hjarrandi Helm",
    hands="Sakpata's Gauntlets",
	legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back="Null Shawl",
	
    -- ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    -- head="Hjarrandi Helm",
    -- body="Boii Lorica +2",
    -- hands="Sakpata's Gauntlets",
    -- legs="Sakpata's Cuisses",
    -- feet="Sakpata's Leggings",
    -- neck={ name="War. Beads +1", augments={'Path: A',}},
    -- waist="Ioskeha Belt +1",
    -- left_ear="Brutal Earring",
    -- right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    -- left_ring="Niqmaddu Ring",
    -- right_ring="Chirich Ring +1",
    -- back="Null Shawl",
	}
	sets.melee.SB = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Dagon Breast.",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.melee.DT = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Telos Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}
	sets.melee.BrazenRush = {
    ammo="Aurgelmir Orb",
    head="Hjarrandi Helm",
    body="Boii Lorica +2",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Chirich Ring +1",
    right_ring="Lehko's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}	
	
	Niche_Set_Names = {'Counter'}
	sets.niche = {}
	sets.niche.Counter = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Sakpata's Leggings",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Cornelia's Belt",
    left_ear="Cryptic Earring",
    right_ear="Telos Earring",
	left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.TwoHanded = {
	legs="Sakpata's Cuisses",
	}
	
	DW_Set_Names = {'NormalDW', 'DTDW'}
	sets.DW = {}
	sets.DW.NormalDW = set_combine(sets.melee.normal,{
	left_ear="Suppanomimi",
    right_ear="Eabani Earring",
	})
	sets.DW.DTDW = set_combine(sets.melee.DT,{
	left_ear="Suppanomimi",
    right_ear="Eabani Earring",
	})


	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}	

	Run_Set_Names = {'Regen','MEVA','Refresh'}
	sets.run = {}
	sets.run.Regen =  {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.run.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Warder's Charm +1",
    waist="Null Belt",
    left_ear="Tuisto Earring",
    right_ear="Sanare Earring",
    left_ring="Shadow Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	sets.run.Refresh =  {			--, +5 Refresh, +1 Regen, -39 PDT, -30 MDT, +18% Movement Speed
    ammo="Staunch Tathlum +1", 		--, -2DT
    head="Null Masque",
	body="Chozoron Coselete", 		--, 2 Refresh
    hands="Sakpata\'s Gauntlets", 	--, -8DT
    legs="Carmine Cuisses +1",		--, +18% Movement Speed
    feet="Sakpata's Leggings",		--, -6DT
    neck="Sibyl Scarf", 			--, 1 Refresh
    waist="Null Belt",
    left_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    right_ear="Odnowa Earring +1",	--, -5MDT, 3 PDT
	left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"}, 	--, 1 Refresh
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"}, 	--, 1 Refresh
    back="Null Shawl",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws.lugra = {
	left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	sets.ws['MightyStrikes'] = {
	ammo = "Yetshila +1",
	feet = "Valorous Greaves",
	
	}
	sets.ws['Resolution']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Ground Strike']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Rufescent Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws["King's Justice"]	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
	body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
	body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Upheaval Low TP']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
	body="Pummeler's Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Ukko's Fury"]	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Valorous Greaves",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Raging Rush"]	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Valorous Greaves",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Armor Break']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Boii Lorica +2",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ws['Weapon Break']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Boii Lorica +2",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ws['Full Break']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Boii Lorica +2",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ws['Steel Cyclone']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Fell Cleave']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Hjarrandi Helm",
    body="Sakpata's Plate",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Null Masque",
    body="Sakpata's Plate",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back="Null Shawl",
	}
	sets.ws['Mistral Axe']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Rampage']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
	--hands="Flamma Manopolas +2",
    hands="Boii Mufflers +2",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Calamity']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Savage Blade']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Vorpal Blade']	= {
    ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Requiescat']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs={ name="Tatenashi Haidate +1", augments={'Path: A',}},
    feet="Sulevia's Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sanguine Blade']	= {
    ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Boii Mufflers +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	

	sets.ws['Stardiver']	= {
	ammo = "Yetshila +1",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Boii Cuisses +2",
	feet = "Valorous Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sonic Thrust']	= {
	ammo = "Yetshila +1",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Flamma Manopolas +2",
	legs="Boii Cuisses +2",
	feet = "Valorous Greaves",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Impulse Drive']	= {
	ammo="Knobkierrie",
    -- head={ name="Blistering Sallet +1", augments={'Path: A',}},
    -- body="Hjarrandi Breastplate",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Judgment']	= {
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pummeler's Lorica +3",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Flash Nova']	= {
    ammo="Knobkierrie",
    head="Nyame Helm", 				--, +30 MAB, +40 MACC
    body="Sacro Breastplate",
    hands="Boii Mufflers +2",
    legs="Nyame Flanchard", 
    feet="Sulev. Leggings +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}		
	sets.ws['Evisceration']	= {
    ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja = {} 					-- Leave this empty
	sets.ja.Enmity = {
    head="Halitus Helm", 
	body="Emet Harness",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Odyssean Cuisses",
    neck="Moonlight Necklace",
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",	--, 4
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}

	sets.ja['Berserk'] = set_combine(sets.ja.Enmity,{
    body="Pummeler's Lorica +3",
    feet={ name="Agoge Calligae +3", augments={'Enhances "Tomahawk" effect',}},
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['Warcry'] = set_combine(sets.ja.Enmity,{
    head="Agoge Mask +3",
	})
	sets.ja['Tomahawk'] = {
	ammo="Thr. Tomahawk",
    feet={ name="Agoge Calligae +3", augments={'Enhances "Tomahawk" effect',}},
	}
	sets.ja['Aggressor'] = set_combine(sets.ja.Enmity,{	
	body="Warrior's Lorica +1",
	})
	
	sets.ja['Retaliation'] = set_combine(sets.ja.Enmity,{	
	})
	sets.ja['Blood Rage'] = {
    body="Boii Lorica +2",
	}
	sets.ja['Mighty Strikes'] = {
	hands="Warrior's Mufflers +2",
	}
	sets.ja['Restraint'] = {
	hands="Boii Mufflers +2",
	}
	sets.ja['Provoke'] = set_combine(sets.ja.Enmity,{	
	})
	sets.ja['Brazen Rush'] = {
    ammo="Aurgelmir Orb",
    head="Hjarrandi Helm",
    body="Boii Lorica +2",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Dedition Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring +1",
    right_ring="Lehko's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.idle = {} 					-- Leave this empty
	sets.idle.normal = {
    ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
	waist="Asklepian Belt",
    left_ear="Crepuscular Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Sapience Orb",
    head="Sakpata's Helm",
    neck="Voltsurge Torque",
    body="Sacro Breastplate",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	legs="Carmine Cuisses +1",
	feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
	} 	
    sets.midcast = {}               -- leave this empty  
	
	Buff_Set_Names = {'Holywater','Phalanx'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	sets.buff.Phalanx = {
    ammo="Staunch Tathlum +1",
    head={ name="Yorium Barbuta", augments={'Mag. Evasion+19','Enmity+7','Phalanx +2',}},
    body={ name="Yorium Cuirass", augments={'Mag. Evasion+20','Enmity+7','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Sanare Earring",
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back="Moonbeam Cape",
	}

end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])
			if spell.name == "Upheaval" and player.tp >= 1500 then
				equip(sets.ws['Upheaval'])
			elseif spell.name == "Upheaval" and player.tp <= 1500 then
				equip(sets.ws['Upheaval Low TP'])
			if buffactive['Mighty Strikes'] then
				equip(sets.ws['MightyStrikes'])
			end
		end
	end
end

function midcast(spell)

end

windower.register_event('prerender', function()
    if os.clock() > (tickdelay or 0) then
        if player.sub_job == 'SAM' and player.status=='Engaged' and not buffactive['Hasso'] and not midaction() and not buffactive['Amnesia'] and not buffactive['Seigan'] then
            send_command('input /ja "Hasso" <me>')
            tickdelay = os.clock() + 10
        end
    end
end)

function job_tick()
    if check_hasso() then return true end
    return false
end

function check_hasso()
        if player.sub_job == 'SAM' and player.status=='Engaged' and not buffactive['Hasso'] and not midaction() and not buffactive['Amnesia'] and not buffactive['Seigan'] then
        send_command('input /ja "Hasso" <me>')
        tickdelay = os.clock() + 10
        return true
    end
    return false
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
    end
    if buff == 'Brazen Rush' then
		if gain then
			if player.status == "Engaged" then
				equip(sets.ja['Brazen Rush'])
			else
				status_change(player.status)
			end
		end	
	end
end


function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if player.equipment.main =="Shining One" then
				equip(sets.melee.TwoHanded)
			end
	if player.status == 'Engaged' and player.equipment.sub == 'Ternion Dagger +1' or player.equipment.sub == 'Zantetsuken' then
		equip(sets.DW[DW_Set_Names[DW_Index]])
	end	
end
	if player.status =='Idle' then
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end
 
function status_change(new,old)
	idle()
end
  

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle DW set' then
        DW_Index = DW_Index +1
        if DW_Index > #DW_Set_Names then DW_Index = 1 end
        windower.add_to_chat('DW mode is now: '..DW_Set_Names[DW_Index])
		equip(sets.DW[DW_Set_Names[DW_Index]])
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Niche set' then
        Niche_Index = Niche_Index +1
        if Niche_Index > #Niche_Set_Names then Niche_Index = 1 end
        windower.add_to_chat('Niche mode is now: '..Niche_Set_Names[Niche_Index])
		equip(sets.niche[Niche_Set_Names[Niche_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind ^f7')

send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')

send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind ^f10')

send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind ^f12')

send_command('unbind Numpad1')
send_command('unbind !Numpad1')
send_command('unbind ^Numpad1')

send_command('unbind Numpad3')
send_command('unbind !Numpad3')
send_command('unbind ^Numpad3')

send_command('unbind Numpad0')
send_command('unbind !Numpad0')
send_command('unbind ^Numpad0')
send_command('unbind Numpad0')
end

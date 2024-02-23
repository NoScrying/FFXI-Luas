function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind !f10 gs c toggle Regain set') -- F10 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	
	Weapon_Index = 1
	Niche_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Buff_Index = 1	
	

	Weapons_Set_Names = {'Caladbolg','Apocalypse', "CrepScythe"}
	sets.weapons = {}
	sets.weapons.Caladbolg = {
    main="Caladbolg",
	sub="Utu Grip",
}
	sets.weapons.Apocalypse = {
    main="Apocalypse",
	sub="Utu Grip",
}
	sets.weapons.CrepScythe = {
    main="Crepuscular Scythe",
	sub="Utu Grip",
}	
	
	Sub_Weapons_Set_Names = {'Lycurgos','Loxotic',"Naegling"}--,''
	sets.sub_weapons = {}
	sets.sub_weapons.Naegling = {
    main="Naegling",
	sub="Blurred Shield +1",
	}
	sets.sub_weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	sub="Blurred Shield +1",
	}	
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}	
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { 					--, +692 MEVA, +15-35 Elemental Resist, +10 Status Resist, -47% MDT, -53% PDT
    ammo="Staunch Tathlum +1", 		--, +11 Status Resist, -3DT
    head="Sakpata's Helm", 			--, 123, -7DT
    body="Sakpata's Plate", 		--, 139, -10DT
    hands="Sakpata's Gauntlets", 	--, 112, -8DT
    legs="Sakpata's Cuisses", 		--, 150, -9DT
    feet="Sakpata's Leggings", 		--, 150, -6DT
    neck="Warder's Charm +1",		--, +20 Elemental, +5% magic absorb
    waist="Carrier's Sash", 		--, +15 Elemental
    left_ear="Tuisto Earring", 		--, +150HP
    right_ear="Eabani Earring", 	--, +8
    left_ring="Archon Ring", 		--, +5% Negate Magic
    right_ring="Purity Ring", 		--, +10, -4% MDT
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, -10PDT
	}
	
	Niche_Set_Names = {'Subtle_Blow'}
	sets.niche = {}
	sets.niche.Subtle_Blow = { 		-- 46 SB, 5 SBII
	ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Hjarrandi Helm",
    body="Flamma Korazin +2", 		--, 17 SB
    hands="Sakpata's Gauntlets",  	--, 8 SB
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, 11 SB
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Niqmaddu Ring",  	--, 5 SBII
    right_ring="Chirich Ring +1", 	--, 10 SB
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.DD_Mode = {} 					--, SAM-SJ = 80 STP = 255 TP (4 Hit) & +45% Haste
	sets.DD_Mode.index = {'TP','DT'} 	--, Apoc Delay = 513 + 10% Job Ability Haste Aftermath
	DD_Mode_ind = 1
	
	sets.DD_Mode["TP"] = { 				--,  +58 STP = 227 TP (5 Hit), +25% Haste, -32% PDT, -22% MDT, +41 DA
    ammo="Coiste Bodhar",
    head="Hjarrandi Helm",			--, -10DT, +7 STP, +6 DA
    body="Hjarrandi Breastplate", 	--, -12DT, +10 STP
    hands="Sakpata's Gauntlets",
    legs={ name="Odyssean Cuisses", augments={'Accuracy+25 Attack+25','"Store TP"+6','Accuracy+10',}}, --, +5% Haste, +11 STP, +2 DA
    feet="Flamma Gambieras +2", 	--, +2% Haste, +6 STP, +6 DA
    neck={ name="Abyssal Beads +1", augments={'Path: A',}}, --, +6 STP
    waist="Ioskeha Belt +1", 		--, +8% Haste, +9 DA
    left_ear="Brutal Earring", 		--, +1 STP, +5 DA
	right_ear="Cessance Earring", 	--, +3 STP, +3 DA
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, +10 DA, -10 PDT
	}
	sets.DD_Mode["DT"] = { 				--, +25% Haste, -50 PDT, -40 MDT, +57 DA
    ammo="Coiste Bodhar",
    head="Sakpata's Helm", 			--, +4% Haste -7DT, +5 DA
    body="Sakpata's Plate", 		--, +2% Haste -10DT, +8 DA
    hands="Sakpata's Gauntlets", 	--, +4% Haste -8DT, +6 DA
    legs="Sakpata's Cuisses", 		--, +4% Haste -9DT, +7 DA
    feet="Sakpata's Leggings", 		--, +2% Haste -6DT, +4 DA
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1", 		--, +8% Haste +9 DA
    left_ear="Cessance Earring", 	--, +3 DA
	right_ear="Brutal Earring", 	--, +5 DA
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, +10 DA, -10 PDT
	}
	sets.DD_Mode.NotSAMSJ = { 			--, +33% Haste, +41 STP = 200 TP, -49 PDT, -39 MDT, +54 DA
	ear2="Brutal Earring", 			--, +1 STP, +5 DA
	ear1={ name="Lugra Earring +1", augments={'Path: A',}}, --, +3 DA
    hands="Sakpata's Gauntlets",  	--, -8DT, +6 DA
    legs="Sakpata's Cuisses", 		--, -9DT, +7 DA
	}
	

	sets.Tank_Mode = {}					--, SAM-SJ = 66 STP = 202 TP (5 Hit) & +35% Haste
	sets.Tank_Mode.index = {'TP', 'DT'} --, Caladbolg, 430 Delay
	Tank_Mode_ind = 1
	
	sets.Tank_Mode["TP"] = { 			--, +51 STP = 184 TP (6 Hit), +25% Haste, -49 PDT, -39 MDT ,+47 DA, +28 Crit
    ammo="Coiste Bodhar",
    head="Hjarrandi Helm",			--, -10DT, +7 STP, +6 DA
    body="Hjarrandi Breastplate", 	--, -12DT, +12 Crit, +10 STP
    hands="Sakpata's Gauntlets", 	--, +4% Haste, -8DT, +6 DA
    legs="Sakpata's Cuisses", 		--, +4% Haste, -9DT, +7 DA
    feet="Flamma Gambieras +2", 	--, +2% Haste, +6 STP, +6 DA
    neck={ name="Abyssal Beads +1", augments={'Path: A',}}, --, +6 STP
    waist="Ioskeha Belt +1", 		--, +8% Haste, +9 DA
    left_ear="Cessance Earring", 	--, +3 STP, +3 DA 
    right_ear="Crep. Earring", 		--, +5 STP
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, +10 DA, -10 PDT
	}
	sets.Tank_Mode["DT"] = { 				--, +34% Haste (Cap 25%), -50 PDT, -40 MDT, +57 DA
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",			--, +4% Haste -7DT, +5 DA
    body="Sakpata's Plate", 		--, +2% Haste -10DT, +8 DA
    hands="Sakpata's Gauntlets", 	--, +4% Haste -8DT, +6 DA
    legs="Sakpata's Cuisses", 		--, +4% Haste -9DT, +7 DA
    feet="Sakpata's Leggings", 		--, +2% Haste -6DT, +4 DA
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1", 		--, +8% Haste +9 DA
    left_ear="Brutal Earring", 		--, +5 DA
	right_ear="Cessance Earring", 	--, +3 DA
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, +10 DA, -10 PDT
	}

	sets.Tank_Mode.NotSAMSJ = { 		--, +28 STP = 156 TP (7 Hit), +29% Haste (Cap 25%), -47 PDT, -37 MDT ,+63 DA
	ear2="Brutal Earring", 			--, +1 STP, +5 DA
	ear1={ name="Lugra Earring +1", augments={'Path: A',}}, --, +3 DA
	}
	
	Run_Set_Names = {'Regen','DT','Refresh'}
	sets.run = {}

	sets.run.Regen =  {				--, 22 Regen, -32 PDT, -224 MDT, +18% Movement Speed
    ammo="Staunch Tathlum +1", 		--, -2DT
    head="Baghere Salade",			--, 2 Regen
    body="Sacro Breastplate",		--, 13 Regen
    hands="Sakpata\'s Gauntlets", 	--, -8DT
    legs="Carmine Cuisses +1",		--, +18% Movement Speed
    feet="Sakpata's Leggings",		--, -6DT
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, +3 Regen
    waist="Platinum Moogle Belt",	--, -3DT
    left_ear="Infused Earring", 	--, 1 Regen
    right_ear="Odnowa Earring +1",	--, -5MDT, 3 PDT
	left_ring="Chirich Ring +1",	--, 2 Regen
    right_ring="Chirich Ring +1",	--, 2 Regen
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, -10PDT
	}
	sets.run.Regain =  {				--, 22 Regen, -32 PDT, -224 MDT, +18% Movement Speed
    ammo="Staunch Tathlum +1", 		--, -2DT
    head="Ratri Sallet +1",			--, +5 Regain
    body="Sacro Breastplate",		--, 13 Regen
    hands="Sakpata\'s Gauntlets", 	--, -8DT
    legs="Carmine Cuisses +1",		--, +18% Movement Speed
    feet="Sakpata's Leggings",		--, -6DT
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, +3 Regen
    waist="Platinum Moogle Belt",	--, -3DT
    left_ear="Infused Earring", 	--, 1 Regen
    right_ear="Odnowa Earring +1",	--, -5MDT, 3 PDT
	left_ring="Chirich Ring +1",	--, 2 Regen
    right_ring="Chirich Ring +1",	--, 2 Regen
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, -10PDT
	}
	sets.run.DT = {					--, +532 MEVA, +15-35 Elemental Resist, +5% Negate Magic, +10 Status Resist, -55 PDT (Cap 50), -45 MDT, +18% Movement Speed
    ammo="Staunch Tathlum +1", 		--, +10 Status Resist, -2DT
    head="Sakpata's Helm", 			--, 123, -7DT
    body="Sakpata's Plate", 		--, 139, -10DT
    hands="Sakpata's Gauntlets", 	--, 112, -8DT
    legs="Carmine Cuisses +1",		--, +18% Movement Speed
    feet="Sakpata's Leggings", 		--, 150, -6DT
    neck="Warder's Charm +1",		--, +20 Elemental, +5% magic absorb
    waist="Carrier's Sash", 		--, +15 Elemental
    left_ear="Tuisto Earring", 		--, +150HP
    right_ear="Eabani Earring", 	--, +8
    left_ring="Archon Ring", 		--, +5% Negate Magic
    right_ring="Defending Ring", 	--, -10DT
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, -10PDT
	}
	sets.run.Refresh =  {			--, +5 Refresh, +1 Regen, -39 PDT, -30 MDT, +18% Movement Speed
    ammo="Staunch Tathlum +1", 		--, -2DT
    head="Sakpata's Helm", 			--, -7DT
	body="Chozoron Coselete", 		--, 2 Refresh
    hands="Sakpata\'s Gauntlets", 	--, -8DT
    legs="Carmine Cuisses +1",		--, +18% Movement Speed
    feet="Sakpata's Leggings",		--, -6DT
    neck="Sibyl Scarf", 			--, 1 Refresh
    waist="Platinum Moogle Belt",	--, -3DT
    left_ear="Infused Earring", 	--, 1 Regen
    right_ear="Odnowa Earring +1",	--, -5MDT, 3 PDT
	left_ring="Stikini Ring +1", 	--, 1 Refresh
    right_ring="Stikini Ring +1", 	--, 1 Refresh
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, -10PDT
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws.lugra = {
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	sets.ws.moonshade = {
	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	}
	
	sets.ws['Resolution']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}
	sets.ws['Spinning Slash']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Torcleaver']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shockwave']	= {
    ammo="Knobkierrie",
    head="Sakpata's Helm",
    body="Heath. Cuirass +2",
    hands="Sakpata's Gauntlets",
	legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Cross Reaper']	= { -- WSD Set
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	
    -- ammo="Knobkierrie", 		--, no DT+ set
    -- head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
	-- body="Heath. Cuirass +2", 
    -- hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    -- legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    -- feet="Heathen's Sollerets +2",
    -- neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- left_ear="Thrud Earring",
	-- right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    -- left_ring="Epaminondas's Ring",
    -- right_ring="Niqmaddu Ring",
    -- back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Catastrophe']	= { -- WSD Set
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	
    -- ammo="Knobkierrie", 		--, no DT+ set
    -- head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
	-- body="Heath. Cuirass +2", 
    -- hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    -- legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    -- feet="Heathen's Sollerets +2",
    -- neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- left_ear="Thrud Earring",
	-- right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    -- left_ring="Epaminondas's Ring",
    -- right_ring="Niqmaddu Ring",
    -- back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Quietus']	= { 	-- WSD Set
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	
    -- ammo="Knobkierrie", 		--, no DT+ set
    -- head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
	-- body="Heath. Cuirass +2", 
    -- hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    -- legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    -- feet="Heathen's Sollerets +2",
    -- neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- left_ear="Thrud Earring",
	-- right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    -- left_ring="Epaminondas's Ring",
    -- right_ring="Niqmaddu Ring",
    -- back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Entropy']	= {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Ignominy Cuirass +3",
    hands="Sakpata's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Cessance Earring",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}
	sets.ws['Spiral Hell']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Infernal Scythe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}}, --, +7 MAB
	head="Pixie Hairpin +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2", 	--, +45 MAB, +50 MACC, +33 Occult Acumen
    neck="Sibyl Scarf", 			--, +10 MAB
    waist="Orpheus's Sash", 		--, +1-15% Magic Damage
    left_ear="Malignance Earring", 	--, +8 MAB, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Insurgency']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Guillotine']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}
	sets.ws['Savage Blade']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},		

	}
	sets.ws['Chant du Cygne']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Requiescat']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
	sets.ws['Upheaval']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ignominy Cuirass +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

	}
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ignominy Cuirass +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

	}
	sets.ws['Sanguine Blade']	= {
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Ignominy Cuirass +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

	}
	sets.ws['Armor Break']	= {
	ammo="Knobkierrie",
    head="Sakpata's Helm", 			--, +40 MACC
	body="Heathen's Cuirass +2", 	--, +54 MACC
    hands="Sakpata's Gauntlets", 	--, +40 MACC
	legs="Heath. Flanchard +2", 	--, +53 MACC, +25 Skill
    feet="Heathen's Sollerets +2", 	--, +50 MACC
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Crepuscular Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.ws['Decimation']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	}	
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Judgment']	= {
    ammo="Knobkierrie",
	head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings +1",
    legs="Fallen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	

	}
	sets.ws['Flash Nova']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}}, --, +7 MAB
    head="Nyame Helm", 				--, +30 MAB, +40 MACC
    body="Sacro Breastplate", 		--, +40 MAB, +25 MACC, +60 Magic Damage
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}}, --, +55 MAB, +28 MACC
    legs="Nyame Flanchard", 		--, +30 MAB, +40 MACC
    feet="Heathen's Sollerets +2", 	--, +45 MAB, +50 MACC, +33 Occult Acumen
    neck="Sibyl Scarf", 			--, +10 MAB
    waist="Orpheus's Sash", 		--, +1-15% Magic Damage
    left_ear="Malignance Earring", 	--, +8 MAB, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Weatherspoon Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},		
	}		

	sets.ja = {} 
	sets.ja.enmity = {				--, +47% Enmity
    head="Sakpata's Helm",
    body="Emet Harness", 			--, 9
    hands="Yorium Gauntlets", 		--, 4
    legs="Odyssean Cuisses", 		--, 5
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10
    waist="Flume Belt",
    left_ear="Trux Earring", 		--, 5
    right_ear="Cryptic Earring",	--, 4
    left_ring="Supershear Ring", 	--, 5
    right_ring="Provocare Ring", 	--, 5
	}
	sets.ja['Nethervoid'] = {
	legs="Heath. Flanchard +2",
	}
	sets.ja['Diabolic Eye'] = {
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
	}
	sets.ja['Last Resort'] = {
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja['Dark Seal'] = {
    head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}},
	}
	sets.ja['Arcane Circle'] = {
    feet="Chaos Sollerets",
	}
	sets.ja["Waltz"] = {
    head="Ratri Sallet +1",
    body="Hjarrandi Breast.",
    hands="Rat. Gadlings +1",
    legs="Dashing Subligar",
    feet="Ratri Sollerets",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Moonlight Ring",
    right_ring="Asklepian Ring",
    back="Moonbeam Cape",
	}
	sets.ja['Weapon Bash'] = set_combine(sets.ja.enmity, { 
	})
	sets.ja['Vallation'] = set_combine(sets.ja.enmity, { 
	})
	sets.ja['Valiance'] = set_combine(sets.ja.enmity, {
	})
	sets.ja['Pflug'] = set_combine(sets.ja.enmity, {
	})	
	sets.ja['Swordplay'] = set_combine(sets.ja.enmity, {
	})	
	sets.ja['Weapon Bash'] =  {
	ammo="Seething Bomblet +1",
    head="Sakpata's Helm",
    body="Heathen's Cuirass +2",
    hands="Ignominy Gauntlets +2",
    legs="Heathen's Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Kentarch Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Heathen's Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Chirich Ring +2",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ja["Jump"] = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Schere Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja["High Jump"] = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Schere Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.idle = {} 					-- Leave this empty
	
	sets.precast = {}
	sets.precast.fastcast = { 		--, QM+3%, + 79 FC
	ammo="Sapience Orb", 			--, 
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --, 8
    neck="Voltsurge Torque", 		--, 4
    body="Sacro Breastplate", 		--, 10
	legs="Enif Cosciales",			--, 8
	feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
	left_ring="Kishar Ring", 	 	--, 4
	right_ring="Weatherspoon Ring +1", --, 5 + QM +3%
    left_ear="Malignance Earring",	--, 4
    right_ear="Loquacious Earring", --, 2
    back={ name="Ankou's Mantle", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --, 10
	} 
		
		
    sets.midcast = {}
    sets.midcast.DarkMagic = { 		--, +309 MACC, +76 Skill
    head="Sakpata's Helm", 			--, +40 MACC
	body="Heathen's Cuirass +2", 	--, +54 MACC
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}}, --, Drain +14, +28 Macc, +16 Skill
	legs="Heath. Flanchard +2", 	--, +53 MACC, +25 Skill
    feet="Heathen's Sollerets +2", 	--, +50 MACC
    neck="Erra Pendant", 			--, +17 MACC, +10 Skill
    waist="Eschan Stone", 			--, +7 MACC
    left_ear="Malignance Earring", 	--, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}}, --, +11 MACC
    left_ring="Stikini Ring +1", 	--, +11 MACC, +8 Skill
    right_ring="Stikini Ring +1", 	--, +11 MACC, +8 Skill
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +9','"Drain" and "Aspir" potency +24',}}, --,  +9 Skill
	}
    sets.midcast.MAB = { 			--, +247 MAB, +60 Magic Damage, +1-15% Magic Damage, +228 MACC, +33 OA = 158TP/100MP
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}}, --, +7 MAB
    head="Nyame Helm", 				--, +30 MAB, +40 MACC
    body="Sacro Breastplate", 		--, +40 MAB, +25 MACC, +60 Magic Damage
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}}, --, +55 MAB, +28 MACC
    legs="Nyame Flanchard", 		--, +30 MAB, +40 MACC
    feet="Heathen's Sollerets +2", 	--, +45 MAB, +50 MACC, +33 Occult Acumen
    neck="Sibyl Scarf", 			--, +10 MAB
    waist="Orpheus's Sash", 		--, +1-15% Magic Damage
    left_ear="Malignance Earring", 	--, +8 MAB, +10 MACC
    right_ear="Friomisi Earring", 	--, +10 MAB
    left_ring="Stikini Ring +1", 	--, +8 Skill, +11 MACC
    right_ring="Stikini Ring +1", 	--, +8 Skill, +11 MACC
    back="Argocham. Mantle", 		--, +12 MAB
	}
    sets.midcast.Absorb = {			--, Absorb +20% Potency, +20 Seconds Duration, +239 MACC, +43 Dark Magic
    head="Sakpata's Helm", 			--, +40 MACC
	body="Heathen's Cuirass +2", 	--, +54 MACC
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}}, --, +28 Macc, +16 Skill
	legs="Heath. Flanchard +2", 	--, +53 MACC, +25 Skill
    feet="Ratri Sollerets", 		--, +33 MACC, +20% Duration
    neck="Erra Pendant", 			--, Absorb +5%, +17 MACC, +10 Skill
    waist="Eschan Stone", 			--, +7 MACC
    left_ear="Malignance Earring", 	--, +8 MAB, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}}, --, +11 MACC
    left_ring="Kishar Ring", 		--, Absorb +5%, +5 MACC
    right_ring="Stikini Ring +1", 	--, +8 Skill, +11 MACC
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.Drain = { 			--, +44% Drain/Aspir Potency, +95% Potency under Nethervoid, +1-15% Damage increase, +20% Duration, +257 MACC, +78 Dark Magic
    ammo="Ghastly Tathlum +1", 
    head="Sakpata's Helm", 			--, +40 MACC
	body="Heathen's Cuirass +2", 	--, +54 MACC
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}}, --, Drain +14, +28 Macc, +16 Skill
	legs="Heath. Flanchard +2", 	--, +40% Nethervoid, = Nethervoid Drain +95%, +53 MACC, +25 Skill
    feet="Ratri Sollerets", 		--, +20% Duration, +33 MACC
    neck="Erra Pendant", 			--, Drain +5, +17 MACC, +10 Skill
    waist="Orpheus's Sash", 		--, +1-15% Elemental Damage
    left_ear="Malignance Earring", 	--, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}}, --, +11 MACC
    left_ring="Evanescence Ring", 	--, Drain +5, +10 Skill
    right_ring="Stikini Ring +1", 	--, +11 MACC, +8 Skill
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +9','"Drain" and "Aspir" potency +24',}}, --, Drain +24, +9 Skill
	}
	sets.midcast.spikes = {			--, Dread Spikes +95% +20% Job Gift = 107,5% Current HP Converted to Spikes.
    main="Crepuscular Scythe",
    ammo="Staunch Tathlum +1", 		--, +11 SIRD, -3DT
    head="Ratri Sallet +1", 		--, HP+410, +7DT
    body="Heath. Cuirass +2", 		--, HP+83, -12DT, Dread Spikes +45%
    hands="Ratri Gadlings +1", 		--, HP+399, +9DT
    legs="Nyame Flanchard", 		--, HP+114, -8DT
    feet="Ratri Sollerets", 		--, HP+387, +5DT
    neck="Unmoving Collar +1", 		--, HP+200
    waist="Platinum Moogle Belt", 	--, HP+10%, -3DT
    left_ear="Odnowa Earring +1", 	--, HP+110, -3DT
    right_ear="Tuisto Earring",		--, HP+150
    left_ring="Moonlight Ring", 	--, HP+110,	-5DT
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, --, HP+135, -7PDT
    back="Moonbeam Cape", 			--, HP+250, -5DT
	}
	sets.midcast.sird = {			--, merits+10 = 104% (Cap 104%), +4 DT, +10% HP, +1012 HP, Dread Spikes +45% = 82.5% Current HP Converted to Spikes.
    ammo="Staunch Tathlum +1", 		--, 11 SIRD
    head="Ratri Sallet +1", 			--, HP+410, +7DT
    body="Heath. Cuirass +2", 		--, HP+83, -12DT, Dread Spikes +45%
    hands="Ratri Gadlings +1", 		--, HP+399, +9DT
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}}, --, 30 SIRD, HP+54
    feet="Odyssean Greaves", 		--, 20 SIRD, HP+20
    neck="Willpower Torque", 		--, 5 SIRD
    waist="Platinum Moogle Belt", 	--, HP+10%, -3DT
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring",	--, 8 SIRD
    left_ring="Moonlight Ring", 	--, HP+100
    right_ring="Evanescence Ring", 	--, 5 SIRD
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.EnmitySIRD = {		--, merits+10 = 104% (Cap 104%), +29% Enmity
    ammo="Staunch Tathlum +1", 		--, 11 SIRD
    head="Halitus Helm",			--, 8
    body="Emet Harness", 			--, 9
    hands="Yorium Gauntlets", 		--, 4
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}}, --, 30 SIRD, HP+54
    feet="Odyssean Greaves", 		--, 20 SIRD
    neck="Willpower Torque", 		--, 5 SIRD
    waist="Warwolf Belt",			--, 3
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring",	--, 8 SIRD
    left_ring="Supershear Ring",	--, 5
    right_ring="Evanescence Ring", 	--, 5 SIRD
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
    sets.midcast.Macc = {			--, +328 MACC
    ammo="Impatiens",
    head="Sakpata's Helm", 			--, +40 MACC
	body="Heathen's Cuirass +2", 	--, +54 MACC
    hands="Sakpata's Gauntlets", 	--, +40 MACC
	legs="Heath. Flanchard +2", 	--, +53 MACC, +25 Skill
    feet="Heathen's Sollerets +2", 	--, +50 MACC
    neck="Erra Pendant", 			--, +17 MACC, +10 Skill
    waist="Eschan Stone", 			--, +7  MACC
    left_ear="Malignance Earring", 	--, +10 MACC
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}}, --, +11 MACC
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --, +15 MACC
    right_ring="Stikini Ring +1", 	--, +11 MACC, +8 Skill
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.enmity = {			--, +55% Enmity
    head="Halitus Helm",			--, 8
    body="Emet Harness", 			--, 9
    hands="Yorium Gauntlets", 		--, 4
    legs="Odyssean Cuisses", 		--, 5
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10
    waist="Flume Belt",
    left_ear="Cryptic Earring",		--, 4
    right_ear="Trux Earring",		--, 5
    left_ring="Supershear Ring", 	--, 5
    right_ring="Provocare Ring", 	--, 5
	}
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	sets.buff.Sleep = {
	head="Frenzy Sallet",
	}	
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)
	if spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
    end	
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])  
			if player.tp <= 2500 and not sets.ws['Catastrophe'] then
				equip (sets.ws.moonshade)				
		end
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja["Waltz"])
	end
end

function midcast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.MEVA)
	end
	if spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
	end
	
	if spell.name:match('Dread Spikes') and player.max_HP < 7000 then 
		equip(sets.midcast.sird)
	elseif spell.name:match('Dread Spikes') and player.max_HP > 7000 then
		equip(sets.midcast.Spikes)
	end
	
	if spell.name:match('Aspir') or spell.name:match('Drain')then
		equip(sets.midcast.Drain)
	elseif spell.name:match('Absorb-')then	
		equip(sets.midcast.Absorb)
	elseif spell.name == "Absorb-Attri" or spell.name == "Absorb-TP" or spell.name == "Stun" or spell.name == "Absorb-ACC" or spell.name:match("Sleep") or spell.name == "Bind" or spell.name == "Break" then
		equip(sets.midcast.Macc)
	end

	if spell.name:match('Poison') or spell.name:match('Flash') then
		equip(sets.midcast.enmity)
	end

    if spell.skill == 'Elemental Magic' then
		equip(sets.midcast.MAB)
	end
	if spell.skill == "Blue Magic"  then	
			equip(sets.midcast.EnmitySIRD)
	end	
	if spell.name == "Weapon Bash" then
		equip(sets.ja["Weapon Bash"])
	end
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
            status_change(player.status)
        end
	end
    if buff == 'Dark Seal' then
        if gain then
            equip(sets.ja['Dark Seal'])
            disable("Head")
        else
            enable("Head")
            status_change(player.status)
        end
    end
	if buff == "sleep" then
		if gain then
            equip(set_combine(sets.MEVA, sets.buff.Sleep))
             	disable('head')
        	else
            	enable('head')
            status_change(player.status)
		end
	end
end


function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]]) --, Equips the last gearset you changed to, is not static
				if player.sub_job ~= "SAM" then
					equip(sets.DD_Mode.NotSAMSJ)
				end
			end
		end
	if player.status =="Engaged" then
		if  Tank_Mode == true then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
     			if player.sub_job ~= "SAM" then
					equip(sets.Tank_Mode.NotSAMSJ)
				end
			end
		end
	if player.status =='Idle' then
        equip(sets.run[Run_Set_Names[Run_Index]]) 
			if player.mpp <= 50 then
				equip(sets.run.Refresh)
		end
    end
 end
 
 function status_change(new,old)
	idle()
end

Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Tank_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Tank_Mode_ind = Tank_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end 
			windower.add_to_chat('Caladbolg --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			--end
		elseif Tank_Mode == false then
			if DD_Mode == true then
				DD_Mode_ind = DD_Mode_ind + 1
				if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
				windower.add_to_chat('Apoc --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
				--if player.status == 'Engaged' then
						equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		Tank_Mode_ind = Tank_Mode_ind + 1
		if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
		windower.add_to_chat('Caladbolg --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if Tank_Mode == true then
			Tank_Mode = false
			windower.add_to_chat('<----- Caladbolg Mode: [Off] ----->')
        else
			Tank_Mode = true
			windower.add_to_chat('<----- Caladbolg Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Apoc Mode: [Off] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- Apoc Mode: [On] ----->')
		end
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
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
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	-- if command == 'toggle Niche set' then
        -- Niche_Index = Niche_Index +1
        -- if Niche_Index > #Niche_Set_Names then Niche_Index = 1 end
        -- windower.add_to_chat('Niche mode is now: '..Niche_Set_Names[Niche_Index])
		-- equip(sets.niche[Niche_Set_Names[Niche_Index]])
	-- end
	if command == 'toggle Regain set' then
        windower.add_to_chat('Run Regain equipped')
		equip(sets.run.Regain)
	end	
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end

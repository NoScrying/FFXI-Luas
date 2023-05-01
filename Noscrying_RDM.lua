function get_sets()
	send_command('bind f7 gs c toggle Crocea set') --, Sends a command to console, command is defined at bottom of Lua
	send_command('bind !f7 gs c toggle Sword set') 
	send_command('bind f9 gs c toggle DW set') 
	send_command('bind !f9 gs c toggle SW set')
	send_command('bind f10 gs c toggle refresh set') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind !f12 gs c toggle Nuke set') 
	--send_command('bind !f12 gs c toggle Dagger set') 
	send_command('bind !numpad1 gs c toggle Buff set') 
	send_command('bind !numpad0 gs c toggle Cure set')

	DW_Index = 1
	Refresh_Index = 1
	SW_Index = 1
	TH_Index = 1
	Crocea_Index = 1
	Sword_Index = 1
	Buff_Index = 1	
	Dagger_Index = 1
	Nuke_Index = 1
	
	Crocea_Set_Names = {'Daybreak','Tauret','Mandau'} --'Odin', 'Crocea_TPBonus','Ternion Dagger' --, must define set names, so it knows what to switch to
	sets.Crocea = {}
	sets.Crocea.Daybreak = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Daybreak",
	}
	sets.Crocea['Ternion Dagger'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub={ name="Ternion Dagger +1", augments={'Path: A',}},
	}
	sets.Crocea['Tauret'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Tauret",
	}	
	sets.Crocea['Mandau'] = {
	main="Mandau",
	sub="Tauret",
	}
	
	Sword_Set_Names = {'Odin'} --'Naegling', 'Excalibur','Excalibur_TPbonus'
	sets.Sword = {}
	sets.Sword.Naegling = {
    main="Naegling",
    sub="Machaera +2",
	}
	sets.Sword.Excalibur = {
    main="Excalibur",
    sub={ name="Ternion Dagger +1", augments={'Path: A',}},
	}
	sets.Sword.Excalibur_TPbonus = {
    main="Excalibur",
    sub="Machaera +2",
	}
	sets.Sword.Odin = {
    main="Wind Knife",
    sub="Qutrub Knife",
    range="Kaja Bow",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Aya. Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Supershear Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	DW_Set_Names = {'DW','DT',}--'DA'
	sets.DW = {} 					-- Leave this empty.
	sets.DW.DW = { --, -32PDT, -22 MDT, +11DW, 15DA, 55STP, +1-15% Elemental Damage, +17 Enspell Damage
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ayanmo Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Orpheus's Sash", --, +1-15% Elemental Damage
    left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
	right_ear="Suppanomimi",
    --left_ear="Eabani Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.DW.DA = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
	right_ear="Suppanomimi",
    --left_ear="Eabani Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.malig = {}
	sets.malig.hands = {
	hands="Malignance Gloves",
	}	
	
	sets.DW.DT = { --,-51PDT, -41MDT, +9DW, 10DA, 60STP, +30 Elemental Resist, 5% Magic Damage Absorb chance
	ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    --neck="Anu Torque",
    neck="Warder's Charm +1",
    waist="Platinum Moogle Belt",
	--waist="Orpheus's Sash",
    --left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
    head="Malignance Chapeau",
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs="Malignance Tights",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Chaac Belt",
	left_ear="Suppanomimi",
	right_ear="Sherida Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	SW_Set_Names = {'SW', 'DT'}
	sets.SW = {}
	sets.SW.SW = { --, -49PDT, -39MDT, 23DA, 2TA, 63STP +17 Enspell Damage
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ayanmo Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.SW.DT = { --, -51PDT, -41MDT, 18DA, 2TA, 68STP, +10% Counter
	ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Warder's Charm +1",
    waist="Platinum Moogle Belt",
    left_ear="Sherida Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	

	Refresh_Set_Names = {'battle'}
	sets.refresh = {}
	sets.refresh.battle = { --, -51PDT, -39MDT, +7 Passive Refresh, +15-35 Elemental Resist, +551 MEVA, +5% Magic Absorb chance
    ammo="Homiliary",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Elite Royal Collar",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Nyame Mail",
    hands="Atrophy Gloves +3",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Knights of Round']	= {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Nyame Mail",
    hands="Atrophy Gloves +3",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Circle Blade']	= {
	ammo="Aurgelmir Orb",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
	body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Chant du Cygne']	= {
	ammo="Aurgelmir Orb",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
	body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs="Jhakri Slops +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.ws['Death Blossom']	= {
	ammo="Oshasha's Treatise",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Crepuscular Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	sets.ws['Requiescat']	= {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Nyame Mail",
    hands="Jhakri Cuffs +2",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Sanguine Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum", --, Magic Critical Hit II, is a 25% Damage increase, Magic Crit Hit is only +10MAB
    head="Pixie Hairpin +1",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Archon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Seraph Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Shining Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Red Lotus Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Black Halo']	= {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Nyame Mail",
    hands="Atrophy Gloves +3",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Realmrazer']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Leth. Houseaux +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
	-- ammo="Perfect Lucky Egg",
    -- feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    -- waist="Chaac Belt",
	
    ammo="Oshasha's Treatise",
    feet="Leth. Houseaux +3",
    waist="Orpheus's Sash",
	
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    neck="Sibyl Scarf",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}

	sets.ws['Evisceration'] = {
	ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Aya. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Mercy Stroke'] = {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
	body="Lethargy Sayon +2",
    --body="Nyame Mail",
    hands="Atrophy Gloves +3",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ja = {} 
	
	sets.idle = {} 
	
	sets.precast = {}
	sets.precast.SIRD = {}
	
	sets.precast.fastcast = { 		--, RDM JP2000 = 38% FC, = 83 FC (Cap 80%), 10 Quick Magic (Cap 10%), Merits+10 = 78 SIRD (cap 102%)
	ammo="Impatiens", 				--, Quick Magic +2% (cap 10%), 10SIRD
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14
	body="Vitiation Tabard +1", 	--, 13
    hands="Chironic Gloves", 		--, 20 SIRD
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --, 20SIRD
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
    neck="Willpower Torque", 		--, 5 SIRD
    waist="Witful Belt",			--, 5 + QM +3%
    left_ear="Magnetic Earring", 	--, 8 SIRD
    right_ear="Halasz Earring", 	--, 5 SIRD
    left_ring="Weatherspoon Ring",	--, 5 + QM +3%
    right_ring="Lebeche Ring", 		--, QM +2%
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10 PDT
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
	Nuke_Set_Names = {'MB','Nukes'}
	sets.Nuke = {}
	sets.Nuke.Nukes = { --, MAB 283, MACC 343, Magic Burst 18 (Cap 40), MB II 6 (no cap), Magic Damage +502, Magic Crit Hit II +10%
    ammo="Ghastly Tathlum +1",
    head="Ea Hat",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Sibyl Scarf",
	waist="Sacro Cord",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Jhakri Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	
	sets.Nuke.MB = { --, MAB 256, MACC 312, Magic Burst 40 (Cap 40), MB II 25 (no cap), Magic Damage +445, Magic Crit Hit II +10%
    ammo="Sroda Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands="Ea Cuffs +1",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Mizu. Kubikazari",
	waist="Sacro Cord",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Mujin Band",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	
	Cure_Index = 1
	Cure_Set_Names = {'Potency','Enmity'}
	sets.Cure = {}	
	sets.Cure.Potency = { 			--,  +58% Cure Potency (Cap 50%), +55 Healing Skill, +19% Self Potency = Cure IV 1000+ HP
	ammo="Staunch Tathlum +1",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	waist="Gishdubar Sash",
    neck="Phalaina Locket",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
	left_ring="Kunaji Ring",
    right_ring="Menelaus's Ring",
    back="Tempered Cape +1",
	}
	sets.Cure.Enmity = { 			--, +51% Enmity, +19% Cure Potency
	ammo="Sapience Orb", 			--, 2 Enmity
    head="Halitus Helm", 			--, 8 Enmity
    body="Emet Harness", 			--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 			--, 5 Enmity
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10 Enmity
    waist="Warwolf Belt", 			--, 3 Enmity
    left_ear="Friomisi Earring", 	--, 2 Enmity
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back="Tempered Cape +1",
	}	
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.enfeebling = { --, MACC+399, Enfeebling Skill +63, Enfeebling Potency +53, Enfeebling Duration +60%, Saboteur +13, Immunobreak +1
	ammo="Regal Gem",				--, Enfeebling Potency +10
    --head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
	head="Befouled Crown",
    body="Lethargy Sayon +2", 		--, Enfeebling Duration +10%| Combined, Enfeebling Potency +16
    hands="Lethargy Gantherots +2", --, Enfeebling Duration +10%| Combined, Saboteur +13 
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}}, --, Enfeebling Potency +10
    neck={ name="Dls. Torque +1", augments={'Path: A',}}, --, Enfeebling Potency +7, Enfeebling Duration +20%
	waist="Sacro Cord",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring", 	--, , Enfeebling Duration +10%
    --left_ring="Kishar Ring", 			--, Enfeebling Duration +5%, +5 MACC
    left_ring="Stikini Ring +1",
    --right_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --, +15 MACC, +16 MND/INT
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}}, --,  Enfeebling Potency +10, Enfeebling Duration +20%
}
	sets.midcast.Macc = { --, +418 MACC, Enfeebling Skill +53, Enfeebling Potency +43, Enfeebling Duration +40%, Saboteur +13, Immunobreak +1, 
	ammo="Regal Gem",
    head="Jhakri Coronal +2",
    --hands="Jhakri Cuffs +2",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Sacro Cord",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}}, --, +30 MACC, +25 INT/MND (25 MACC'ish)
}	

	
	sets.midcast.enhancingskill = { --, ML35 Skill = 644, Enhancing Skill +127 - Temper II = 34 TA
	ammo="Staunch Tathlum +1",
    --sub="Pukulatmuj +1",
    head="Befouled Crown",
    --body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +1",
    hands="Vitiation Gloves +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Leth. Houseaux +3",
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.barspell = { --, Enhancing Skill +127, BarAilment +20, Duration+15%
	ammo="Staunch Tathlum +1",
    --sub="Pukulatmuj +1",
    head="Befouled Crown",
    --body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +1",
    hands="Vitiation Gloves +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Leth. Houseaux +3",
    neck="Sroda Necklace",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}

	sets.midcast.phalanx = { --, Skill 522 = Phalanx Tier 8 = -35 Damage, +20 = -55 Damage, +38% Duration, +20% Ghostfyre Duration, Merits+30 Seconds
	ammo="Staunch Tathlum +1",
	sub="Sakpata's Sword", --, self Phalanx +5
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}}, --, +20% Duration
	waist="Embla Sash", --, +10% Duration
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1", --, +8% Duration
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}}, --, Ghostfyre Cape Duration is separate from normal Duration gear, 
	}		
	
	sets.midcast.enhancingskillPT = { --, +84 Enhancing Skill, +93% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, Gloves+15 Seconds
	sub="",
	ammo="Staunch Tathlum +1",
    head="Befouled Crown",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands="Vitiation Gloves +3",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3", 
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
}	
	

	
	sets.midcast.enhancingduration = { --, +133% Duration, +20% Ghostfyre Duration, Merits+30 Seconds
	ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +3",
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.enhancingdurationPT = { --, +133% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, = 12 Minute Haste II
	ammo="Staunch Tathlum +1",
    head="Lethargy Chappel",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.refresh = { --, +5 Refresh Potency, +103% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, Sash+20 Seconds
	ammo="Staunch Tathlum +1",
	head="Amalric Coif",
    body="Atrophy Tabard +2",
    hands="Atrophy Gloves +3",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Gishdubar Sash",
    left_ear="Aredan Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	

	sets.midcast.regen = { --, +55SIRD, +15 Regen, +10% Potency, +38% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, Telchine +12 Seconds = Regen II, 28/Tic = 1568 HP
	ammo="Staunch Tathlum +1",
    sub="Bolelabunga",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
	waist="Embla Sash",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.Enmity = { 		--, +51% Enmity
	ammo="Sapience Orb", 			--, 2 Enmity
    head="Halitus Helm", 			--, 8 Enmity
    body="Emet Harness", 			--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 			--, 5 Enmity
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10 Enmity
    waist="Warwolf Belt", 			--, 3 Enmity
    left_ear="Friomisi Earring", 	--, 2 Enmity
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
	}	


	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.DarkNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,head=ElementalGear.Head,ring2=ElementalGear.RingDark}
	sets.midcast.LightNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,ring2=ElementalGear.RingLight}

	
    sets.aftercast = {}             -- leave this empty
	
	
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.CursnaOthers = { --, +107 Healing Skill, +45 Cursna, 
    neck="Malison Medallion", --, +10
	body="Vitiation Tabard +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +5
    left_ring="Ephedra Ring", --, 10
    right_ring="Menelaus's Ring", --, +20
	}
	sets.buff.CursnaSelf = { --, +107 Healing Skill, +35 Cursna, +30 Self Cursna
    neck="Nicander's Necklace", --, +20 Self
	body="Vitiation Tabard +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash", --, +10 Self
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +5
    left_ring="Ephedra Ring", --,+10 
    right_ring="Menelaus's Ring", --, +20
	}
end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end  
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end

end

function midcast(spell)
	if spell.name:match ('Sleep') or spell.name:match ('Blind') or spell.name =="Frazzle II" or spell.name:match ('Dispel')or spell.name:match ('Break')or spell.name:match ('Bind')then
			equip(sets.midcast.Macc) --, Macc Spells, are not affected by Potency or are more important to land quickly, Gravity can get over -80% Movement speed, Frazzle II added to MACC set, to allow Frazzle III to be cast with Max Potency
	elseif spell.skill == 'Enfeebling Magic' or spell.name =="Frazzle III" then
			equip(sets.midcast.enfeebling)
				if spell.name:match('Diaga') then
					equip(sets.TH.TH3)
			end
		end	
	if spell.name:match('Refresh') or spell.name:match('Aquaveil') then
		equip(sets.midcast.refresh) else
			if spell.name:match('Regen') then
				equip(sets.midcast.regen) else
					if spell.name:match('Refresh') or spell.name:match('Aquaveil') then
						equip(sets.midcast.refresh) else
									if buffactive['Composure'] and spell.skill == 'Enhancing Magic' and spell.target.type == 'PLAYER' or spell.target.type == 'NPC' then
										equip(sets.midcast.enhancingdurationPT) else --, If Composure buff is active then uses this set when targeting others players or NPCs
											if spell.skill == 'Enhancing Magic' and spell.target.type == 'SELF' or spell.target.type == 'PLAYER' or spell.target.type == 'NPC' then
												equip(sets.midcast.enhancingduration) --, if Composure is not on, then uses this Duration set instead, for self, other players and NPCs
										
									end
								end
							end
						end
					end
				
	if spell.name:match('Bar') then
		equip(sets.midcast.barspell)
	end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
			if spell.name:match('Phalanx II') then
				equip(sets.midcast.enhancingskillPT) else
			end
		end
	if spell.target.type == 'SELF' and spell.name:match('Temper') or spell.name:match('En') or spell.name:match('Gain-') or spell.name:match('Stoneskin') then
		equip(sets.midcast.enhancingskill)		
	end	
    if spell.action_type == 'Magic' then
        if spell.skill == 'Elemental Magic' then
            equip(sets.Nuke[Nuke_Set_Names[Nuke_Index]])
            if world.weather_element == spell.element or world.day_element == spell.element then --, If spell matches day or zone weather, then adds below set to above set
                equip(sets.midcast.NukeWithMatchingWeather)
			end
		end
	end

    if spell.action_type == 'Magic' then
		if spell.skill == 'Healing Magic' then
			equip(sets.Cure[Cure_Set_Names[Cure_Index]])
		end
	if 	spell.name:match('Cursna') and spell.target.type == 'SELF' then
			equip(set_combine(sets.Cure.Potency, sets.buff.CursnaSelf))
elseif 	spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
			equip(set_combine(sets.Cure.Potency, sets.buff.CursnaOthers))
	end
end
	if spell.name:match("Enfire II") or spell.name:match("Enthunder II") or spell.name:match("Enaero II") or spell.name:match("Enblizzard II") or spell.name:match("Enstone II") or spell.name:match("Enwater II") then
		equip (sets.midcast.Enmity)
	end
end


function aftercast(spell)
	idle()
end
 
function status_change(new,old)
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
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','waist','neck','feet')
        else
            enable('ring1','ring2','waist','neck','feet')
            status_change(player.status)
        end
    end
end

function idle()
	if player.status=='Engaged' and player.sub_job ~='NIN' or player.sub_job ~= 'DNC'then --, "~=" means "Is Not", So if sub is not NIN or DNC, then uses this set
		equip(sets.SW[SW_Set_Names[SW_Index]])
			if player.equipment.main ~= "Crocea Mors" then
				equip(sets.malig.hands)	
		end
	end
	if player.status=='Engaged' and player.sub_job =='NIN' or player.sub_job == 'DNC' then --, "==" means "Is", So if sub is NIN or DNC then uses this set
        equip(sets.DW[DW_Set_Names[DW_Index]])
			if player.equipment.main ~= "Crocea Mors" then
				equip(sets.malig.hands)	
				elseif player.equipment.main =="Wind Knife" then
					equip(sets.Sword.Odin)
			end 
		end
	if player.status =='Idle' then
		equip(sets.refresh.battle)
	end
end

function self_command(command)
	if command == 'toggle DW set' then --, Toggles based on defined sets at top of Lua.
        DW_Index = DW_Index +1
    if DW_Index > #DW_Set_Names then DW_Index = 1 end
        windower.add_to_chat('DW mode is now: '..DW_Set_Names[DW_Index]) --, sends a message to your chat window, is not shared with PT
        equip(sets.DW[DW_Set_Names[DW_Index]])
    end
	if command == 'toggle refresh set' then
        Refresh_Index = Refresh_Index +1
    if Refresh_Index > #Refresh_Set_Names then Refresh_Index = 1 end
        windower.add_to_chat('Idle mode is now: '..Refresh_Set_Names[Refresh_Index])
        equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
    end
	if command == 'toggle SW set' then
        SW_Index = SW_Index +1
    if SW_Index > #SW_Set_Names then SW_Index = 1 end
        windower.add_to_chat('SW mode is now: '..SW_Set_Names[SW_Index])
        equip(sets.SW[SW_Set_Names[SW_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Sword set' then
        Sword_Index = Sword_Index +1
    if Sword_Index > #Sword_Set_Names then Sword_Index = 1 end
        windower.add_to_chat('Sword set is now: '..Sword_Set_Names[Sword_Index])
        equip(sets.Sword[Sword_Set_Names[Sword_Index]])
    end
	if command == 'toggle Crocea set' then
        Crocea_Index = Crocea_Index +1
    if Crocea_Index > #Crocea_Set_Names then Crocea_Index = 1 end
        windower.add_to_chat('Crocea Mors Sub Weapon is now: '..Crocea_Set_Names[Crocea_Index])
        equip(sets.Crocea[Crocea_Set_Names[Crocea_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Nuke set' then
        Nuke_Index = Nuke_Index +1
    if Nuke_Index > #Nuke_Set_Names then Nuke_Index = 1 end
        windower.add_to_chat('Nuke mode is now: '..Nuke_Set_Names[Nuke_Index])
    end
	if command == 'toggle Cure set' then
        Cure_Index = Cure_Index +1
    if Cure_Index > #Cure_Set_Names then Cure_Index = 1 end
        windower.add_to_chat('Cure mode is now: '..Cure_Set_Names[Cure_Index])
	end
end


function file_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
end

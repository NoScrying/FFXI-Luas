texts = require('texts')
local res = require('resources')
include('organizer-lib')
local enspells = {
    ['Enfire'] = true,
    ['Enblizzard'] = true,
    ['Enaero'] = true,
    ['Enstone'] = true,
    ['Enthunder'] = true,
    ['Enwater'] = true,
    ['Enfire II'] = true,
    ['Enblizzard II'] = true,
    ['Enaero II'] = true,
    ['Enstone II'] = true,
    ['Enthunder II'] = true,
    ['Enwater II'] = true,
}
local gainstat = {
    ['INT Boost'] = true,
    ['MND Boost'] = true,
    ['STR Boost'] = true,
    ['DEX Boost'] = true,
}
function get_sets()
	send_command('bind f7 gs c toggle Crocea set') 	--, Sends a command to console, command is defined at bottom of Lua
	send_command('bind !f7 gs c toggle MaxTau set') 	--, ! = ALT
	send_command('bind ^f7 gs c toggle Relic set') 	--, ^ = CTRL
	send_command('bind f9 gs c toggle DW set') 
	send_command('bind !f9 gs c toggle SW set')
	send_command('bind f10 gs c toggle refresh set') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind ^f12 gs c toggle Nuke set') 
	--send_command('bind !f12 gs c toggle Dagger set') 
	send_command('bind !numpad0 gs c toggle Cure set')
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad3 gs c toggle Echo Drops')
	send_command('bind !numpad1 gs c toggle Holy Water')
	
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('bind !pageup input //send Nolyte /Savage Blade')	
	send_command('bind !pagedown input //send Kiokura /Savage Blade')
	send_command('bind !end input //send Kiokura /LeadenSalute')
	send_command('bind !delete input //send Kiokura /LastStand')

	DW_Index = 1
	Refresh_Index = 1
	SW_Index = 1
	TH_Index = 1
	
	Crocea_Index = 1
	MaxTau_Index = 1
	Relic_Index = 1
	
	Buff_Index = 1	
	Dagger_Index = 1
	Nuke_Index = 1

	sets["WarpRing"] = {
	right_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	Crocea_Set_Names = {'Daybreak',"Ammurapi",'Crocea_TPBonus','WSD+10 Knife'} --"Bunzi",'Odin', 'Crocea_TPBonus','Gleti','Tauret' --, must define set names, so it knows what to switch to
	sets.Crocea = {}
	sets.Crocea.Daybreak = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Daybreak",
	}
	-- sets.Crocea['Bunzi'] = {
    -- main={ name="Crocea Mors", augments={'Path: C',}},
    -- sub="Bunzi's Rod",
	-- }
	sets.Crocea['WSD+10 Knife'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Prophetic Knife",
	}	
	sets.Crocea['Ammurapi'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Ammurapi Shield",
	}	
	sets.Crocea['Crocea_TPBonus'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Machaera +2",
	}	
	sets.Crocea.Odin = {
    main="Wind Knife",
    sub="Qutrub Knife",
    range="Kaja Bow",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Aya. Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Suppanomimi",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    right_ring="Murky Ring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Null Shawl",
	}
	Sword_Set_Names = {"Odin"}
	sets.Sword = {}
	sets.Sword.Odin = {
    main="Wind Knife",
    sub="Qutrub Knife",
    range="Kaja Bow",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Aya. Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Suppanomimi",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    right_ring="Murky Ring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Null Shawl",
	}


	MaxTau_Set_Names = {'Maxentius','Tauret'}--'Dispelga',
	sets.MaxTau = {}
	sets.MaxTau.Dispelga = {
    main="Daybreak",
    sub="Tauret",
	}
	sets.MaxTau.Maxentius = {
    main="Maxentius",
    sub="Machaera +2",
	}
	sets.MaxTau.Tauret = {
    main="Tauret",
    sub="Daybreak",
	}	
	Relic_Set_Names = {'Mandau & WSD+10 Knife',"Naegling & TP Bonus", "Naegling & WSD+10 Knife"} --,,'Excalibur & TP Bonus'
	sets.Relic = {}
	sets.Relic["Excalibur & TP Bonus"] = {
    main="Excalibur",
    sub="Prophetic Knife",
	}
	sets.Relic["Mandau & WSD+10 Knife"] = {
    main="Mandau",
    sub="Prophetic Knife",
	}
	sets.Relic["Naegling & TP Bonus"] = {
    main="Naegling",
    sub="Machaera +2",
	}
	sets.Relic["Naegling & WSD+10 Knife"] = {
    main="Naegling",
    sub="Prophetic Knife",
	}
	
	DW_Set_Names = {'DW','DT',}--'DA'
	sets.DW = {} 					-- Leave this empty.
	sets.DW.DW = { --, -32PDT, -22 MDT, +11DW, 15DA, 55STP, +1-15% Elemental Damage, +17 Enspell Damage
	ammo="Sroda Tathlum",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Sworn Gauntlets",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Orpheus's Sash", --, +1-15% Elemental Damage
    --left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
    left_ear="Eabani Earring",
	right_ear="Suppanomimi",
    left_ring="Murky Ring",
    right_ring="Chirich Ring +1",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back="Null Shawl",
	}
	sets.DW.DA = {
	ammo="Sroda Tathlum",
    head="Malignance Chapeau",
    body="Ayanmo Corazza +2",
    hands="Sworn Gauntlets",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
	right_ear="Suppanomimi",
    --left_ear="Eabani Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	sets.malig = {}
	sets.malig.hands = {
	ammo="Coiste Bodhar",
	hands="Malignance Gloves",
	waist="Shetal Stone",
	left_ear="Sherida Earring",
	}	
	sets.Empty = {
	ammo=empty,
    head="",
    body="",
    hands="",
    legs="",
    feet="",
    neck="",
    waist="",
    left_ear="",
	right_ear="",
    left_ring="",
    right_ring="",
    back="",
	}
	
	sets.DW.DT = { --,-51PDT, -41MDT, +9DW, 10DA, 60STP, +30 Elemental Resist, 5% Magic Damage Absorb chance
	ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Malignance Tabard",
	hands="Bunzi's Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    --neck="Anu Torque",
    neck="Warder's Charm +1",
    --waist="Flume Belt",
	waist="Orpheus's Sash",
    --left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Murky Ring",
    right_ring="Chirich Ring +1",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back="Null Shawl",
	}

	
	TH_Set_Names = {'TH4'}
	sets.TH = {}
	sets.TH.TH4 = {
	ammo="Perfect Lucky Egg",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    waist="Chaac Belt",
	}
	
	SW_Set_Names = {'SW', 'DT'}
	sets.SW = {}
	sets.SW.SW = { --, -49PDT, -39MDT, 23DA, 2TA, 63STP +17 Enspell Damage
	--sub="Ammurapi Shield",
    ammo="Coiste Bodhar",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Aya. Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Murky Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.SW.DT = { --, -51PDT, -41MDT, 18DA, 2TA, 68STP, +10% Counter
	--sub="Ammurapi Shield",
    ammo="Coiste Bodhar",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Bunzi's Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Warder's Charm +1",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Murky Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}	

	Refresh_Set_Names = {'Refresh', 'MEVA'}
	sets.refresh = {}
	sets.refresh.Refresh = { --, -51PDT, -39MDT, +7 Passive Refresh, +15-35 Elemental Resist, +551 MEVA, +5% Magic Absorb chance
    ammo="Staunch Tathlum +1",
    head="Viti. Chapeau +4",
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Carrier's Sash",
    left_ear="Odnowa Earring +1",
    right_ear="Alabaster Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Null Shawl",
	}
	sets.refresh.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Carrier's Sash",
    left_ear="Sanare Earring",
    right_ear="Alabaster Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Null Shawl",
	}	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    ammo="Oshasha's Treatise",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    hands="Atrophy Gloves +4",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Knights of Round']	= {
    ammo="Oshasha's Treatise",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    hands="Atrophy Gloves +4",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Circle Blade']	= {
	ammo="Aurgelmir Orb",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    hands="Atrophy Gloves +4",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Chant du Cygne']	= {
	ammo="Yetshila +1",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Egbesu Frock",
    hands="Bunzi's Gloves",
    legs="Jhakri Slops +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Lethargy Earring +1",
    left_ring="Ephramad's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws['Death Blossom']	= {
	ammo="Oshasha's Treatise",
    head="Malignance Chapeau",
    body="Egbesu Frock",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Crepuscular Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
	}
	sets.ws['Requiescat']	= {
    ammo="Oshasha's Treatise",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    hands="Atrophy Gloves +4",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sanguine Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum", --, Magic Critical Hit II, is a 25% Damage increase, Magic Crit Hit is only +10MAB
    head="Pixie Hairpin +1",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Archon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Seraph Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Lethargy Chappel +2",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring +1",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shining Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Lethargy Chappel +2",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring +1",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Red Lotus Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Lethargy Chappel +2",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Burning Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Lethargy Chappel +2",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Black Halo']	= {
    ammo="Oshasha's Treatise",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    hands="Atrophy Gloves +4",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Realmrazer']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +4",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Leth. Houseaux +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
	-- ammo="Perfect Lucky Egg",
    -- feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    -- waist="Chaac Belt",
	
    ammo="Sroda Tathlum",
    head="Lethargy Chappel +2",
    --body="Lethargy Sayon +2",
    body="Egbesu Frock",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
	}

	sets.ws['Evisceration'] = {
	ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Lethargy Sayon +2",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Aya. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Ilabrat Ring",
    right_ring="Ephramad's Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Mercy Stroke'] = {
    ammo="Prophetica",
    head="Vitiation Chapeau +4",
    body="Egbesu Frock",
    --body="Nyame Mail",
    hands="Atrophy Gloves +4",
    legs="Nyame Flanchard",
    feet="Leth. Houseaux +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Empyreal Arrow'] = {
    range="Ullr",
    ammo="Chapuli Arrow",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Cacoethic Ring",
    right_ring="Longshot Ring",
    back="Null Shawl",
	}
	
	sets.ja = {} 
	
	sets.idle = {} 
	
	sets.precast = {}
	sets.precast.SIRD = {}
	
	sets.precast.fastcast = { 		--, RDM JP2000 = 38% FC, = 83 FC (Cap 80%), 10 Quick Magic (Cap 10%), Merits+10 = 78 SIRD (cap 102%)
	ammo="Impatiens", 				--, Quick Magic +2% (cap 10%), 10SIRD
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14
	body="Vitiation Tabard +3", 	--, 13
    hands="Chironic Gloves", 		--, 20 SIRD
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --, 20SIRD
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
    neck="Loricate Torque +1", 		--, 5 SIRD
    waist="Witful Belt",			--, 5 + QM +3%
    left_ear="Magnetic Earring", 	--, 8 SIRD
    right_ear="Halasz Earring", 	--, 5 SIRD
    left_ring="Weatherspoon Ring +1",	--, 5 + QM +3%
    right_ring="Lebeche Ring", 		--, QM +2%
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}}, --, 10 PDT
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	sets.precast['Impact'] = set_combine(sets.precast.fastcast,{ Body = "Crepuscular Cloak", head = "", range = "Ullr", ammo ="" })	
	
	Nuke_Set_Names = {'MB','Nukes'}
	sets.Nuke = {}
	sets.Nuke.Nukes = { --, MAB 283, MACC 343, Magic Burst 18 (Cap 40), MB II 6 (no cap), Magic Damage +502, Magic Crit Hit II +10%
    ammo="Ghastly Tathlum +1",
    head="Lethargy Chappel +2",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Jhakri Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
	}
	
	sets.Nuke.MB = { --, MAB 256, MACC 312, Magic Burst 40 (Cap 40), MB II 25 (no cap), Magic Damage +445, Magic Crit Hit II +10%
    ammo="Sroda Tathlum",
    head="Ea Hat +1",
    body="Ea Houppelande",
    hands="Ea Cuffs +1",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck="Mizu. Kubikazari",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Mujin Band",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
	}
	sets.Nuke["Luminohelix"] = set_combine (sets.Nuke.MB, {
	left_ring = "Weatherspoon Ring +1",
	})
	sets.Nuke["Noctohelix"] = set_combine (sets.Nuke.MB, {
	head = "Pixie Hairpin +1",
	left_ring = "Archon Ring",
	})

	
	Cure_Index = 1
	Cure_Set_Names = {'Potency','Enmity'}
	sets.Cure = {}	
	sets.Cure.Potency = { 			--,  +52% Cure Potency (Cap 50%), +55 Healing Skill, +14% Self Potency = Cure IV 1000+ HP
    ammo="Staunch Tathlum +1",
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    body="Bunzi's Robe",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    neck="Loricate Torque +1",
    waist="Shinjutsu-no-Obi +1",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Murky Ring",
    right_ring="Mephitas's Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	sets.Cure.Enmity = { 			--, +53% Enmity, +29% Cure Potency
	ammo="Sapience Orb", 			--, 2 Enmity
    head="Halitus Helm", 			--, 8 Enmity
    body="Emet Harness", 			--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 			--, 5 Enmity
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10 Enmity
    waist="Warwolf Belt", 			--, 3 Enmity
    left_ear="Cryptic Earring",		--, 4
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back="Tempered Cape +1",
	}	
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.enfeebling = { --, MACC+399, Enfeebling Skill +63, Enfeebling Potency +53, Enfeebling Duration +60%, Saboteur +13, Immunobreak +1
	ammo="Regal Gem",				--, Enfeebling Potency +10
    head="Vitiation Chapeau +4",
    body="Lethargy Sayon +2", 		--, Enfeebling Duration +10%| Combined, Enfeebling Potency +16
    hands="Lethargy Gantherots +2", --, Enfeebling Duration +10%| Combined, Saboteur +13 
    legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Resist Silence"+5','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+3',}},
    feet={ name="Vitiation Boots +4", augments={'Immunobreak Chance',}}, --, Enfeebling Potency +10
    neck={ name="Dls. Torque +1", augments={'Path: A',}}, --, Enfeebling Potency +7, Enfeebling Duration +20%
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Malignance Earring",
    right_ear="Snotra Earring", 	--, , Enfeebling Duration +10%
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --, +15 MACC, +16 MND/INT
    --left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring="Kishar Ring", 		--, Enfeebling Duration +10%, +5 MACC
    --right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}}, --,  Enfeebling Potency +10, Enfeebling Duration +20%
}
	sets.midcast.Macc = { --, +418 MACC, Enfeebling Skill +53, Enfeebling Potency +43, Enfeebling Duration +40%, Saboteur +13, Immunobreak +1, 
	ammo="Regal Gem",
    head="Vitiation Chapeau +4",
    body="Atrophy Tabard +4",
    hands="Lethargy Gantherots +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Resist Silence"+5','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+3',}},
    feet={ name="Vitiation Boots +4", augments={'Immunobreak Chance',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Snotra Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Aurist's Cape +1", augments={'Path: A',}}, --, +30 MACC, +25 INT/MND (25 MACC'ish)
}	
	sets.midcast["Impact"] = {
    range="Ullr",
	main="Bunzi's Rod",
	sub="Ammurapi Shield",
	ammo=empty,
	head=empty,
    body="Crepuscular Cloak",
    hands="Atro. Gloves +4",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Resist Silence"+5','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+3',}},
    feet="Leth. Houseaux +3",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Archon Ring",
    back="Aurist's Cape +1",
}	
	
	sets.midcast.Banish = { 
	ammo="Regal Gem",
    head="Ipoca Beret",
    body="Adamantite Armor",
    hands="Lethargy Gantherots +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Resist Silence"+5','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+3',}},
    feet={ name="Vitiation Boots +4", augments={'Immunobreak Chance',}},
    neck="Jokushu Chain",
    waist="Null Belt",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Disperser's Cape",
}	
	
	sets.midcast.enhancingskill = {
	ammo="Staunch Tathlum +1",
    --sub="Forfend +1",
    head="Befouled Crown",
    --body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +3",
    hands="Vitiation Gloves +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Leth. Houseaux +3",
    neck="Hoxne Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.barspell = { --, Enhancing Skill +127, BarAilment +20, Duration+15%
    ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Viti. Tabard +3",
    hands="Atro. Gloves +4",
    legs="Shedir Seraweels",
    feet="Leth. Houseaux +3",
    neck="Sroda Necklace",
    waist="Embla Sash",
    left_ear="Alabaster Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}

	sets.midcast.phalanx = { --,
	ammo="Staunch Tathlum +1",
	--sub="Sakpata's Sword", --, self Phalanx +5
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}}, --, +20% Duration
	waist="Embla Sash", --, +10% Duration
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1", --, +8% Duration
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}}, --, Ghostfyre Cape Duration is separate from normal Duration gear, 
	}
	sets.midcast.phalanxEngaged = { --, Skill 522 = Phalanx Tier 8 = -35 Damage, +15 = -50 Damage, +38% Duration, +20% Ghostfyre Duration, Merits+30 Seconds
	ammo="Staunch Tathlum +1",
	sub="",
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}}, --, +20% Duration
	waist="Embla Sash", --, +10% Duration
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1", --, +8% Duration
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}}, --, Ghostfyre Cape Duration is separate from normal Duration gear, 
	}	
	
	sets.midcast.enhancingskillPT = { --, 595 skill - +133% Duration - +20% Ghostfire Duration
    ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body="Viti. Tabard +3",
    hands="Atro. Gloves +4",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
}	
	

	
	sets.midcast.enhancingduration = { --, +133% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, 12 Minute Self Haste, 30 Minute with Composure
	ammo="Staunch Tathlum +1",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +3",
    hands="Atrophy Gloves +4",
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Lethargy Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.enhancingdurationPT = { --, +133% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, = 12 Minute Haste II
    ammo="Staunch Tathlum +1",
    head="Lethargy Chappel +2",
	body="Vitiation Tabard +3",
    hands="Atrophy Gloves +4",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.refresh = { --, +7 Refresh Potency, +103% Duration, +20% Ghostfyre Duration, +20 Seconds
	ammo="Staunch Tathlum +1",
	head="Amalric Coif +1",
    body="Atrophy Tabard +4",
    hands="Atrophy Gloves +4",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +3",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Gishdubar Sash",
    left_ear="Magnetic Earring",
    right_ear="Lethargy Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.Aquaveil = { --, Aquaveil+4, Stoneskin+65
	ammo="Staunch Tathlum +1",
	head="Amalric Coif +1",
    body="Vitiation Tabard +3",
    hands="Atrophy Gloves +4",
    legs="Shedir Seraweels",
    feet="Leth. Houseaux +3",
    neck="Nodens Gorget",
	waist="Emphatikos Rope",
    left_ear="Magnetic Earring",
    right_ear="Lethargy Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}	

	sets.midcast.regen = { --, +55SIRD, +15 Regen, +10% Potency, +38% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, Telchine +12 Seconds = Regen II, 28/Tic = 1984 HP
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
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.regenEngaged = { --, +55SIRD, +15 Regen, +38% Duration, +20% Ghostfyre Duration, Merits+30 Seconds, Telchine +12 Seconds = Regen II, 28/Tic = 1984 HP
	ammo="Staunch Tathlum +1",
	sub="",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
	waist="Embla Sash",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    left_ear="Magnetic Earring",
    right_ear="Lethargy Earring +1",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.Enmity = { 		--, +52% Enmity
	ammo="Sapience Orb", 			--, 2 Enmity
    head="Halitus Helm", 			--, 8 Enmity
    body="Emet Harness", 			--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 			--, 5 Enmity
    neck={ name="Unmoving Collar +1", augments={'Path: A',}}, --, 10 Enmity
    waist="Warwolf Belt", 			--, 3 Enmity
    left_ear="Cryptic Earring",		--, 3
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
	}	


	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring +1"
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
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.CursnaOthers = { --, +107 Healing Skill, +60 Cursna, 
    neck="Debilis Medallion", --, +15
	body="Vitiation Tabard +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash",
    feet="Gendewitha Galoshes +1", --, +10
    left_ring="Haoma's Ring", --, 15
    right_ring="Menelaus's Ring", --, +20
    back="Oretania's Cape +1", --, +5
	}
	sets.buff.CursnaSelf = { --, +107 Healing Skill, +40 Cursna, +30 Self Cursna
    neck="Nicander's Necklace", --, +20 Self
	body="Vitiation Tabard +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash", --, +10 Self
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +5
    left_ring="Haoma's Ring", --,+15 
    right_ring="Menelaus's Ring", --, +20
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}
	
	sets.weaponswaps = {}
	sets.weaponswaps.Phalanx = {
    sub="Sakpata's Sword",
	}	
	sets.weaponswaps.Regen = {
    sub="Bolelabunga",
	}		
	sets.weaponswaps.Enhancingskill = {
    sub="Forfend +1",
	}
	sets.weaponswaps.Enhancingduration = {
    sub="Ammurapi Shield",
	}	
	sets.weaponswaps.MagicAccuracy = {
	range="Ullr",
	ammo=empty,
	sub="Ammurapi Shield",
	}
RDM_info_1 = texts.new('${text}', {
    pos = {
        x = 794,
        y = 732,
    },
	bg = {
		alpha   = 150,   -- 0-255 (0 = transparent, 255 = opaque)
	},
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
RDM_info_2 = texts.new('${text}', {
    pos = {
        x = 680,
        y = 732,
    },
	bg = {
		alpha   = 150,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})

RDM_info_1:show()
RDM_info_2:show()
update_rdm_panel()

remedy_box = texts.new('', {
    pos = {x = 555, y = 930},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
panacea_box = texts.new('', {
    pos = {x = 555, y = 880},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
holywater_box = texts.new('', {
    pos = {x = 561, y = 830},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile_box = texts.new('', {
    pos = {x = 550, y = 965},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile1_box = texts.new('', {
    pos = {x = 532, y = 980},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
InstantWarp_box = texts.new('', {
    pos = {x = 680, y = 1068},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})

Item_box = texts.new('${text}', {
    pos = {
        x = 1215,
        y = 930,
    },
    bg = {
        alpha = 190,
    },
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
        draggable = false,
    }
})

Item_box:show()
remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()

update_item_boxes()
count_item()
end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
	if spell.name == "Dispelga" then
	equip(sets.precast['Dispelga'])
	end
if spell.name == "Impact" then
    if player.tp >= 500 or buffactive['Aftermath: Lv.3'] then
        equip(set_combine(sets.precast["Impact"], {
            range = player.equipment.range,
			main = player.equipment.main,
			sub = player.equipment.sub,
            ammo = "Regal Gem"
        }))
    else
        equip(sets.precast["Impact"])
    end
end
	if sets.ws[spell.name] then
		if player.equipment.sub == "Prophetic Knife" then
			equip(set_combine(sets.ws[spell.name], {ammo="Prophetica"}))
    else
        equip(sets.ws[spell.name])
    end
end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end

end

function midcast(spell)

    -- Magic Accuracy spells
    if T{
        "Sleep","Blind","Frazzle II","Dispel",
        "Break","Bind","Silence","Stun","Absorb-TP"
    }:contains(spell.name) then
    if player.status == 'Engaged' then
        equip(sets.midcast.Macc)
    else
        equip(sets.midcast.Macc)
		equip(sets.weaponswaps.MagicAccuracy)
        end
        return
    end

    -- Enfeebling
    if spell.skill == 'Enfeebling Magic' or
       spell.name == "Frazzle III" or
	   spell.name == "Sleep II" or
       spell.name == "Sleepga II" then
        equip(sets.midcast.enfeebling)
        if spell.name:match('Diaga') then
            equip(sets.TH.TH3)
        end

        return
    end

    -- Refresh
    if spell.name:match('Refresh') then
        equip(sets.midcast.refresh)
		equip(sets.weaponswaps.Enhancingduration)
        return
    end

    -- Aquaveil / Stoneskin
    if spell.name == 'Aquaveil' or spell.name == 'Stoneskin' then
        equip(sets.midcast.Aquaveil)
        return
    end

    -- Enhancing Magic
    if spell.skill == 'Enhancing Magic' then

        -- Barspells
        if spell.name:match('Bar') then
            equip(sets.midcast.barspell)
			equip(sets.weaponswaps.Enhancingduration)
            return
        end

        -- Enspell / Temper II
        if spell.target.type == 'SELF' and (
            spell.name == 'Temper II' or
            spell.name:match('En')
        ) then
            equip(sets.midcast.enhancingskill)
			equip(sets.weaponswaps.Enhancingskill)
            return
        end

    -- Gain
    if spell.name:match('Gain')  then
    equip(set_combine(
        sets.midcast.enhancingduration,
        sets.weaponswaps.Enhancingduration,
        {hands="Vitiation Gloves +3"}
    ))	
        return
    end

    -- Regen
    if spell.name:match('Regen') then
        if player.status == 'Idle' then
            equip(sets.midcast.regen)
			equip(sets.weaponswaps.Regen)
        else
            equip(sets.midcast.regenEngaged)
        end
        return
    end
        -- Phalanx II
        if spell.name == 'Phalanx II' then

            if spell.target.type == 'SELF' then
                if player.status == 'Engaged' then
                    equip(sets.midcast.phalanxEngaged)
                else
                    equip(sets.midcast.phalanx)
					equip(sets.weaponswaps.Phalanx)
                end
            elseif spell.target.type == 'PLAYER' or
                   spell.target.type == 'NPC' then
                equip(sets.midcast.enhancingskillPT)
				equip(sets.weaponswaps.Enhancingduration)
            end

            return
        end
		
        -- Duration sets
        if buffactive['Composure'] and
           (spell.target.type == 'PLAYER' or spell.target.type == 'NPC') then
            equip(sets.midcast.enhancingdurationPT)
			equip(sets.weaponswaps.Enhancingduration)
        else
            equip(sets.midcast.enhancingduration)
			equip(sets.weaponswaps.Enhancingduration)
        end
        return
    end



    -- Elemental Magic
    if spell.skill == 'Elemental Magic' then
        equip(sets.Nuke[Nuke_Set_Names[Nuke_Index]])

        if world.weather_element == spell.element or
           world.day_element == spell.element then
            equip(sets.midcast.NukeWithMatchingWeather)
        end

        if spell.name == "Luminohelix" then
            equip(sets.Nuke.Luminohelix)
        elseif spell.name == "Noctohelix" then
            equip(sets.Nuke.Noctohelix)
        end

	if spell.name == "Impact" then
    if player.tp >= 500 or buffactive['Aftermath: Lv.3'] then
        equip(set_combine(sets.midcast["Impact"], {
            range = player.equipment.range,
			main = player.equipment.main,
			sub = player.equipment.sub,
            ammo = "Regal Gem"
        }))
    else
        equip(sets.midcast["Impact"])
    end
        return
    end
end

    -- Healing Magic
    if spell.skill == 'Healing Magic' then

        equip(sets.Cure[Cure_Set_Names[Cure_Index]])

        if spell.name == 'Cursna' then
            if spell.target.type == 'SELF' then
                equip(set_combine(
                    sets.Cure.Potency,
                    sets.buff.CursnaSelf
                ))
            else
                equip(set_combine(
                    sets.Cure.Potency,
                    sets.buff.CursnaOthers
                ))
            end
        end

        return
    end

    -- Enmity Enspell II set
    if T{
        "Enfire II","Enthunder II","Enaero II",
        "Enblizzard II","Enstone II","Enwater II"
    }:contains(spell.name) then
        equip(sets.midcast.Enmity)
        return
    end

    -- Banish
    if spell.name:match('Banish') then
        equip(sets.midcast.Banish)
        return
    end
end


function aftercast(spell)
	idle()
	equip_current_weapons()
	update_item_boxes()
end
function status_change(new,old)
	idle()
	update_rdm_panel()
	update_item_boxes()
	equip_current_weapons()
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
    if enspells[buff]
    or gainstat[buff]
    or buff == 'Composure'
    or buff == 'Saboteur'
    or buff == 'Phalanx'
    or buff == 'Multi Strikes' 
    or buff == 'Refresh'
    or buff == 'Haste' then
        update_rdm_panel()
    end
end

function idle()

    if player.status == 'Engaged' then
		disable('sub')
        if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
            equip(sets.DW[DW_Set_Names[DW_Index]])
        else
            equip(sets.SW[SW_Set_Names[SW_Index]])
        end

    if player.equipment.main ~= "Crocea Mors" then
		equip(sets.malig.hands)
		disable('sub')
		elseif player.equipment.main == "Wind Knife" then
            equip(sets.Sword.Odin)
        end

    elseif player.status == 'Idle' then
	enable('sub')
        equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
    end
	equip_current_weapons()
end

function equip_current_weapons()

    if Weapon_Mode == "Crocea" then
        equip(sets.Crocea[Crocea_Set_Names[Crocea_Index]])

    elseif Weapon_Mode == "MaxTau" then
        equip(sets.MaxTau[MaxTau_Set_Names[MaxTau_Index]])

    elseif Weapon_Mode == "Relic" then
        equip(sets.Relic[Relic_Set_Names[Relic_Index]])

    elseif Weapon_Mode == "Sword" then
        equip(sets.Sword[Sword_Set_Names[Sword_Index]])
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
	--
	if command == 'toggle MaxTau set' then
		Weapon_Mode = "MaxTau"
    MaxTau_Index = MaxTau_Index +1
    if MaxTau_Index > #MaxTau_Set_Names then 
		MaxTau_Index = 1 
	end
        windower.add_to_chat('MaxTau set is now: '..MaxTau_Set_Names[MaxTau_Index])
        equip(sets.MaxTau[MaxTau_Set_Names[MaxTau_Index]])
end
	if command == 'toggle Relic set' then
		Weapon_Mode = "Relic"
    Relic_Index = Relic_Index +1
    if Relic_Index > #Relic_Set_Names then 
		Relic_Index = 1 
	end
        windower.add_to_chat('Relic set is now: '..Relic_Set_Names[Relic_Index])
        equip(sets.Relic[Relic_Set_Names[Relic_Index]])
end
	if command == 'toggle Crocea set' then
		Weapon_Mode = "Crocea"
    Crocea_Index = Crocea_Index + 1
    if Crocea_Index > #Crocea_Set_Names then
        Crocea_Index = 1
    end
		windower.add_to_chat('Crocea set is now: '..Crocea_Set_Names[Crocea_Index])
		equip(sets.Crocea[Crocea_Set_Names[Crocea_Index]])
end
	--
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
	end
	--
	if command == 'toggle Holy Water' then
        windower.add_to_chat("Using Holy Water")
		send_command ("input /item 'Holy Water' <me>")
	end
	if command == 'toggle Echo Drops' then
        windower.add_to_chat("Using Echo Drops")
		send_command ("input /item 'Echo Drops' <me>")
    end
	--
	if command == 'toggle Nuke set' then
        Nuke_Index = Nuke_Index +1
    if Nuke_Index > #Nuke_Set_Names then Nuke_Index = 1 end
        windower.add_to_chat('Nuke mode is now: '..Nuke_Set_Names[Nuke_Index])
    end
	--
	if command == 'toggle Cure set' then
        Cure_Index = Cure_Index +1
    if Cure_Index > #Cure_Set_Names then Cure_Index = 1 end
        windower.add_to_chat('Cure mode is now: '..Cure_Set_Names[Cure_Index])
	end
end

function color_enspell(spell)

    if spell:find('Enfire') then
        return '\\cs(255,0,0)'..spell..'\\cr'
    elseif spell:find('Enblizzard') then
        return '\\cs(0,128,255)'..spell..'\\cr'
    elseif spell:find('Enaero') then
        return '\\cs(0,255,0)'..spell..'\\cr'
    elseif spell:find('Enstone') then
        return '\\cs(210,180,40)'..spell..'\\cr'
    elseif spell:find('Enthunder') then
        return '\\cs(180,0,255)'..spell..'\\cr'
    elseif spell:find('Enwater') then
        return '\\cs(0,255,255)'..spell..'\\cr'
    end

    return spell

end
function color_gainstat(spell)

    if spell:find('STR Boost') then
        return '\\cs(255,0,0)'..spell..'\\cr'
    elseif spell:find('INT Boost') then
        return '\\cs(0,128,255)'..spell..'\\cr'
    elseif spell:find('DEX Boost') then
        return '\\cs(180,0,255)'..spell..'\\cr'
    elseif spell:find('MND Boost') then
        return '\\cs(0,255,255)'..spell..'\\cr'
    end

    return spell

end
function get_current_enspell()

    for spell in pairs(enspells) do
        if buffactive[spell] then
            return spell
        end
    end

    return 'None'

end
function get_current_gainstat()

    for spell in pairs(gainstat) do
        if buffactive[spell] then
            return spell
        end
    end

    return 'No-Boost '

end
function update_rdm_panel()
	local gainstat = color_gainstat(get_current_gainstat())
	local enspell = color_enspell(get_current_enspell())
	local composure = buffactive['Composure']
	local saboteur  = buffactive['Saboteur']
	local phalanx   = buffactive['Phalanx']
	local temper = buffactive['Multi Strikes']
	local refresh = buffactive['Refresh']
	local haste = buffactive['Haste']

     RDM_info_1:text(string.format(
        'Enspell: %s\nComposure: %s\nSaboteur : %s\nPhalanx  : %s',
        enspell,
        composure and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        saboteur and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        phalanx and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
    ))
    RDM_info_2:text(string.format(
        'Gain: %s\nTemper : %s\nRefresh: %s\nHaste  : %s',
		gainstat,
        temper and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        refresh and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr',
        haste and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
    ))
end
function count_item(name)
    local item = res.items:with('en', name)
    if not item then return 0 end

    local inv = windower.ffxi.get_items('inventory')
    local count = 0

    for i = 1, inv.max do
        local slot = inv[i]
        if slot and slot.id == item.id then
            count = count + slot.count
        end
    end

    return count
end
function update_item_boxes()

    remedy_box:text(('Rem: %d'):format(count_item('Remedy')))
    panacea_box:text(('Pan: %d'):format(count_item('Panacea')))
    holywater_box:text(('HW: %d'):format(count_item('Holy Water')))
    vile_box:text(('VElix: %d'):format(count_item('Vile Elixir')))
    vile1_box:text(('VElix +1: %d'):format(count_item('Vile Elixir +1')))
    InstantWarp_box:text(('Warp: %d'):format(count_item('Instant Warp')))
	Item_box:text(
		('Reraise : %d\n' ..
		'Hi-RR   : %d\n' ..
		'Insta RR: %d\n' ..
		'Utsusemi: %d\n' ..
		'Silent Oil: %d\n' ..
		'Prism Powder: %d\n' ..
		'Grape Daifuku: %d'):format(
			count_item('Reraiser'),
			count_item('Hi-Reraiser'),
			count_item('Instant Reraise'),
			count_item('Shihei'),
			count_item('Silent Oil'),
			count_item('Prism Powder'),
			count_item('Grape Daifuku')
		))
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

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Item_box:destroy()
end
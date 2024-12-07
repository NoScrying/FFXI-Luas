function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind f7 gs c toggle Weapons set') -- F9 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set') -- F12 = Cycle through
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	
	Buff_Index = 1	
	TH_Index = 1
	Run_Index = 1
	Weapons_Index = 1

	sets.DD_Mode = {}
	sets.DD_Mode.index = {'normal', 'Hybrid - SB+75',"DT"} --,DT
	DD_Mode_ind = 1
	sets.DD_Mode.normal = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Bhikku Hose +2",
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Bhikku Earring +1", 	--, Counter +8
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.DD_Mode.DT = {				--, -50 PDT, -34 MDT, 65STP (10 Hit), 3QA, 8TA, 15DA, 39KA, SB 35, SBII 25, Crit  +20%
    ammo="Staunch Tathlum +1", 		--, -3DT, PDL+3
    head="Malignance Chapeau", 		--, -6DT, 8STP, PDL+3
    body="Malignance Tabard", 		--, -9DT, 11STP, PDL+6
	hands="Malignance Gloves",		--, -5DT, 12STP, PLD+4
	legs="Malignance Tights",		--, -7DT, 10STP, PDL+5
	feet="Malignance Boots", 		--, -4DT, 9STP, PDL+2
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}}, --, 15KA
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear="Bhikku Earring +1", 	--, Counter +8
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10KA, 10DA, -10PDT
}
	sets.DD_Mode["Hybrid - SB+75"]= {	--, -46PDT, -36 MDT, 47STP (12 hit) 3QA, 16TA, 15DA, 55KA, SB 51, SBII 25 (Max 75), Crit +25%
    ammo="Staunch Tathlum +1", 		--, -3DT, PDL+3
    head="Kendatsuba Jinpachi +1", 	--, -6DT, 8STP, PDL+3
    body="Malignance Tabard", 		--, -9DT, 11STP, PDL+6
    --hands="Ken. Tekko +1",			--, 4TA, 8SB, +5 Crit
	hands="Malignance Gloves",		--, -5DT, 12STP, PLD+4
    --legs="Mpaca's Hose",			--, 4TA, 5SBII, +6 Crit, -9PDT
	legs="Bhikku Hose +2", 			--, 25KA, 9STP, -13DT
    feet="Ken. Sune-Ate +1",		--, 4TA, 8SB, +5 Crit
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}}, --, 15KA
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear="Bhikku Earring +1", 	--, Counter +8	
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10KA, 10DA, -10PDT
}
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {'Counter - 80', 'Hybrid - SB+75'} --, 
	Tank_Mode_ind = 1
	sets.Tank_Mode["Counter - 80"] = {	--, -54PDT, 36STP(13 Hit),3QA, 8TA, 10DA, PDL+6%, Counter +53, Merit +5, JT +22  (80)
    ammo="Amar Cluster", 			--, Counter +2
    head="Malignance Chapeau", 		--, -6DT, 8STP, PDL+3
    body="Mpaca's Doublet", 		--, -10PDT, Counter +10
	hands="Rao Kote +1",			--, Counter +5
    legs="Anch. Hose +2",			--, Counter +5
    feet="Bhikku Gaiters +2",		--, -9DT,
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, Counter +10
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Cryptic Earring", 	--, Counter +3
    right_ear="Bhikku Earring +1", 	--, Counter +8
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII  
    right_ring="Defending Ring",	--, -10DT
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}, --, 10DA, Counter +10
	}
	sets.Tank_Mode["Hybrid - SB+75"]= {	--, -46PDT, -36 MDT, 47STP (12 hit) 3QA, 16TA, 15DA, 55KA, SB 51, SBII 25 (Max 75), Crit +25%
    ammo="Staunch Tathlum +1", 		--, -3DT, PDL+3
    head="Kendatsuba Jinpachi +1", 	--, -6DT, 8STP, PDL+3
    body="Malignance Tabard", 		--, -9DT, 11STP, PDL+6
    --hands="Ken. Tekko +1",			--, 4TA, 8SB, +5 Crit
	hands="Malignance Gloves",		--, -5DT, 12STP, PLD+4
    --legs="Mpaca's Hose",			--, 4TA, 5SBII, +6 Crit, -9PDT
	legs="Bhikku Hose +2", 			--, 25KA, 9STP, -13DT
    feet="Ken. Sune-Ate +1",		--, 4TA, 8SB, +5 Crit
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}}, --, 15KA
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear="Odr Earring",		--, +5 Crit		
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10KA, 10DA, -10PDT
}
	
	Run_Set_Names = {'DT','Regen'}
	sets.run = {}
	sets.run.DT = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Hermes' Sandals",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Odnowa Earring +1",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Shadow Ring",
    right_ring="Defending Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Regen = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Hiza. Haramaki +2",
    hands="Rao Kote +1",
    legs="Bhikku Hose +2",
    feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {					--, +682 MEVA, 40-50 Elemental Resist, +5% Negate Magic Damage chance, -51% PDT, -41% MDT
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Arete del Luna",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Terrasoul Ring",
    right_ring="Icecrack Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}


	TH_Set_Names = {'TH'}
	sets.TH = {} 					-- Leave this empty.
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {'Verethragna', 'Malignance'}
	sets.Weapons = {} 					-- Leave this empty.
	sets.Weapons.Verethragna = {
	main = "Verethragna",
	} 
	sets.Weapons.Malignance = {
	main = "Malignance Pole",
	} 

	
	sets.idle = {}
	sets.idle.normal = {
    ammo="Aurgelmir Orb",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Hizamaru Haramaki +2",
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
	legs="Bhikku Hose +2",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws = {} -- Leave this empty.
	sets.ws['Victory Smite'] = {
    ammo="Knobkierrie",
    head="Adhemar Bonnet +1",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws.Impetus = set_combine(sets.ws['Victory Smite'],{
    head="Adhemar Bonnet +1",
	body="Bhikku Cyclas +2",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	right_ring="Gere Ring",
	})
	
	sets.ws['Ascetic\'s Fury'] = {
    ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shijin Spiral'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weatherspoon Ring +1",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shoulder Tackle'] = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Bhikku Cyclas +2",
    hands="Malignance Gloves",
    legs="Bhikku Hose +2",
    feet="Malignance Boots",
    neck="Moonlight Necklace",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Bhikku Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weather. Ring +1",
    back="Sacro Mantle",
	}
	sets.ws['Tornado Kick'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Mpaca's Hose",
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},	
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Dragon Kick'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Mpaca's Hose",
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},	
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Raging Fists'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Attack'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Asuran Fists'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands="Hizamaru Kote +2",
    legs="Hiza. Hizayoroi +2",
    feet="Bhikku Gaiters +2",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring="Ilabrat Ring",
    right_ring="Sroda Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Howling Fist'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 	

	sets.ws['Cataclysm'] = {
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Archon Ring",
    back="Sacro Mantle",
	} 	
	sets.ws['Shell Crusher'] = {
    ammo="Knobkierrie",
    head="Malignance Chapeau",
    body="Bhikku Cyclas +2",
    hands="Malignance Gloves",
    legs="Bhikku Hose +2",
    feet="Bhikku Gaiters +2",
    neck="Sanctity Necklace",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear={ name="Bhikku Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weather. Ring +1",
    back="Sacro Mantle",
	} 	
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja.Enmity = {
    ammo="Staunch Tathlum +1",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Bhikku Hose +2",
    feet="Bhikku Gaiters +2",
    neck="Moonlight Necklace",
    waist="Moonbow Belt +1",
    right_ear="Trux Earring",
    left_ear="Cryptic Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Counterstance'] = set_combine(sets.ja.Enmity,{
    feet={ name="Hes. Gaiters +1", augments={'Enhances "Mantra" effect',}},
	})  
	sets.ja['Mantra'] = {
    feet={ name="Hes. Gaiters +1", augments={'Enhances "Mantra" effect',}},
	} 
	sets.ja['Chakra'] = {
    ammo="Staunch Tathlum +1",
    head="Hiza. Somen +2",
    body="Anch. Cyclas +2",
    hands={ name="Hes. Gloves +1", augments={'Enhances "Invigorate" effect',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Supershear Ring",
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}  
	sets.ja['Impetus'] = {	
	left_ring="Defending Ring",
	body="Bhikku Cyclas +2",
	} 
	sets.ja['Dodge'] = {	
    feet="Anch. Gaiters +3",
	}  
	sets.ja['Footwork'] = {
	feet="Bhikku Gaiters +2",
	}
	sets.ja['Chi Blast'] = {	
    head={ name="Mel. Crown +2", augments={'Enhances "Penance" effect',}},
	}
	sets.ja['Boost'] = {	
    waist="Ask Sash",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
	}
	sets.ja.footwork = {
    feet="Anch. Gaiters +3",
	legs="Bhikku Hose +2",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
	}
	sets.ja['Hundred Fists'] = {
    legs={ name="Hes. Hose +1", augments={'Enhances "Hundred Fists" effect',}},
	}
	sets.ja['Provoke'] = set_combine(sets.ja.Enmity,{
	})
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, { 
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Pflug'] = set_combine(sets.ja.Enmity, {
	})	
	sets.ja['Swordplay'] = set_combine(sets.ja.Enmity, {
	})
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.Sleep = {
	head="Frenzy Sallet",
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}
	
    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
	ammo="Sapience Orb",	
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+4','Attack+14',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
	}
    sets.midcast = {}               -- leave this empty  
	sets.midcast.phalanx = {
	ammo="Staunch Tathlum",
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Incanter's Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	}
    sets.aftercast = {}             -- leave this empty

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
			if buffactive['Impetus'] and spell.name == 'Victory Smite' or spell.name == "Ascetic's Fury" then
				equip(sets.ws.Impetus)
		end
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.MEVA)
	end 
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Impetus' then
        if gain then
			if Tank_Mode == false then
			if player.status == "Engaged" then
				equip(sets.ja['Impetus'])
		elseif Tank_Mode == true then
			if player.status == "Engaged" then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			end
        end
	end
end

    if buff == 'Footwork' then
		if gain then
			if player.status == "Engaged" then
				equip(sets.ja.footwork)
				status_change(player.status)
			end
		end	
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
    if buff == "Boost" then
		if gain then
		equip(sets.ja['Boost'])
		disable("waist")
		status_change(player.status)
    else
		enable("waist")
		status_change(player.status)
	end
end
end

function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if DD_Mode == false then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				if buffactive['Footwork']then
					equip(sets.ja.footwork) 
						elseif buffactive['Impetus'] then
						equip(sets.ja['Impetus'])
					end
				end	
			end

	if player.status =='Idle' then
        equip(sets.run[Run_Set_Names[Run_Index]]) 
    end
end	
 
function status_change(new,old)
	idle()
end

Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if DD_Mode == true then --, Checks whether or not the DD_Mode Mode is active,
			DD_Mode_ind = DD_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end 
			windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
			--end
		elseif DD_Mode == false then
			if Tank_Mode == true then
				Tank_Mode_ind = Tank_Mode_ind + 1
				if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
				windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
				--if player.status == 'Engaged' then
					equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		DD_Mode_ind = DD_Mode_ind + 1
		if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
		windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Tank Mode: [On] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
		status_change(player.status)
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
        if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
		equip(sets.TH[TH_Set_Names[TH_Index]])
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
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

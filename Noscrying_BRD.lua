function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	
	Melee_Set_Names = {'normal', 'DT'}
	
	Melee_Index = 1
	sets.melee = {} 				-- Leave this empty.
	sets.melee.normal = {
    range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +2',}},  
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Lissome Necklace",
    waist="Shetal Stone",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    -- left_ear="Brutal Earring",
    -- right_ear="Cessance Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}  
	sets.melee.DT = {
    range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +2',}},  
    head="Ayanmo Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Elite Royal Collar",
    waist="Flume Belt",
    left_ear="Suppanomimi",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back="Moonbeam Cape",
	}  	
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Rudra\'s Storm']	= {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Evisceration']	= {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Petrov Ring",
    right_ring="Rajas Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}		
	sets.ws['Aeolian Edge']	= {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}		
	sets.ws['Exenterator']	= {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}		
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Nightingale'] = {
    feet={ name="Bihu Slippers", augments={'Enhances "Nightingale" effect',}},
	} 	
	sets.ja['Troubadour'] = {
    body={ name="Bihu Justaucorps", augments={'Enhances "Troubadour" effect',}},
	} 	
	
	sets.idle = {}
	sets.idle.normal = {
    range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +2',}},  
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs="Ayanmo Cosciales +2",
    feet="Ayanmo Gambieras +2",
    neck="Elite Royal Collar",
    waist="Flume Belt",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 					-- Leave this empty.
	
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	head="Fili Calot",
    body="Inyanga Jubbah +1",
    hands="Inyan. Dastanas +1",
    legs="Ayanmo Cosciales +2",
    feet="Bihu Slippers",
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Loquacious Earring",
    right_ear="Aredan Earring",
    left_ring="Weatherspoon Ring",
    right_ring="Lebeche Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty
	sets.midcast.songs = {
    head="Ayanmo Zucchetto +2",
    body="Fili Hongreline",
    hands="Inyan. Dastanas +1",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Moonbow Whistle +1",
    waist="Harfner's Sash",
    left_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    right_ear="Aredan Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.macc = {
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Moonbow Whistle +1",
    waist="Eschan Stone",
    left_ear="Enchntr. Earring",
    right_ear="Aredan Earring",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},	
	}
	sets.midcast.terpander = {
	range="Terpander",
	}
	sets.midcast.madrigal = {
    head="Fili Calot",
    body="Fili Hongreline",
    hands="Inyan. Dastanas +1",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Moonbow Whistle +1",
    waist="Harfner's Sash",
    left_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.march = {
    head="Fili Calot",
    body="Fili Hongreline",
    hands="Fili Manchettes",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Moonbow Whistle +1",
    waist="Harfner's Sash",
    left_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.ballad = {
    head="Fili Calot",
    body="Fili Hongreline",
    hands="Inyan. Dastanas +1",
    legs="Fili Rhingrave",
    feet="Brioso Slippers +2",
    neck="Moonbow Whistle +1",
    waist="Harfner's Sash",
    left_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
    sets.aftercast = {}             -- leave this empty
	sets.aftercast.linos = {
	range={ name="Linos", augments={'All Songs+1','Occ. quickens spellcasting +4%','STR+5 DEX+5',}},
	}
end

function precast(spell)
    if  spell.type == 'BardSong' or spell.type ~= 'JobAbility' then
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
if spell.type == 'BardSong' then
        equip(sets.midcast.songs)
    end
if spell.name:match('Fire Carol')then
        equip(sets.midcast.terpander)
	end
if spell.name:match('Madrigal')then
        equip(sets.midcast.madrigal)
	end
if spell.name:match('Ballad')then
        equip(sets.midcast.ballad)
	end
if spell.name:match('March')then
        equip(sets.midcast.march)
	end
if spell.name:match('Lullaby') then
		equip(sets.midcast.macc)
	end
end


function aftercast(spell)
 idle()
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee.normal)
	else
		equip(sets.melee.DT)
	end
end

 
function status_change(new,old)
 idle()
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        send_command('@input /echo ----- Melee Set changed to '..Melee_Set_Names[Melee_Index]..' -----')
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
end


function user_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
end
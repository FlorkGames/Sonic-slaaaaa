local laughSteps = {272, 276, 279, 283, 286, 289, 293}
function onBeatHit()

    if curBeat == 55 then
	setProperty('defaultCamZoom',1.6)
    end

    	if curBeat >= 274 and curBeat < 281 and curBeat % 4 == 0 then
		setProperty('defaultCamZoom',1.2)
    	elseif curBeat == 281 then
		setProperty('defaultCamZoom',0.7)
end
	if curBeat >= 281 and curBeat < 283 and curBeat % 4 == 0 then
		setProperty('defaultCamZoom',1.2)
    	elseif curBeat == 283 then
		setProperty('defaultCamZoom',0.7)
	end
	
	if curBeat >= 290 and curBeat < 298 and curBeat % 4 == 0 then
		setProperty('defaultCamZoom',1.2)
    	elseif curBeat == 298 then
		setProperty('defaultCamZoom',0.7)
	end

	if curBeat >= 310 and curBeat < 318 and curBeat % 4 == 0 then
		setProperty('defaultCamZoom',1.2)
    	elseif curBeat == 318 then
		setProperty('defaultCamZoom',0.7)
	end

	if curBeat >= 329 and curBeat < 332 and curBeat % 4 == 0 then
		setProperty('defaultCamZoom',1.2)
    	elseif curBeat == 332 then
		setProperty('defaultCamZoom',0.7)
	end
   end

function onStepHit()
local halfBeatLength = getPropertyFromClass("Conductor", "crochet") / 500
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)

    if laughSteps[1] == curStep then
        setProperty("boyfriend.alpha", 0)
        setProperty("dad.alpha", 0)
        doTweenAlpha("LAUGHH", "boyfriend", 1, halfBeatLength, "smootherstepinout")
        doTweenAlpha("LAUGH", "dad", 1, halfBeatLength, "smootherstepinout")
	setProperty('defaultCamZoom',0.7)
    end

    if curStep == 1068 then
	thing = thing * -1
	doTweenAngle('rotate', 'camHUD', thing * 10, crochet / 250, 'quartOut')
	end
end
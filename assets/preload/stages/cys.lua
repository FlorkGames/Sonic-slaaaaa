function onCreate()
	makeAnimatedLuaSprite('laspernocas', 'exe/cys/cysRunnin',725,200);
	addAnimationByPrefix('laspernocas','correPuta','ZOOOM',24,true);
	addLuaSprite('laspernocas',true)
	setProperty('laspernocas.visible',true)
	makeAnimatedLuaSprite('RUNBITCH', 'exe/cys/cysRunnin',725,200);
	addAnimationByPrefix('RUNBITCH','COREEE','nyooomm',24,true);
	addLuaSprite('RUNBITCH',true)
	setProperty('RUNBITCH.visible',false)
	makeAnimatedLuaSprite('fogooo', 'exe/cys/Fire',-650,-500);
	addAnimationByPrefix('fogooo','taPegandoFogoBixo','Fire',24,true);
	scaleObject('fogooo',1.8,1.8)
	addLuaSprite('fogooo',false)
	makeAnimatedLuaSprite('chao', 'exe/cys/cys2',-4000,-500);
	addAnimationByPrefix('chao','vaimaisrapido','GROUND',32,true);
	scaleObject('chao',1.7,1.7)
	addLuaSprite('chao',false)
end
function onStepHit()
  if curStep == 1021 then
	 setProperty('laspernocas.visible',false)
	 setProperty('RUNBITCH.visible',true)
  end
end
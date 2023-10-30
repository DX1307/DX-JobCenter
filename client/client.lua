ESX = exports['es_extended']:getSharedObject()

for k,v in pairs(Config.PedList) do
    if Config.EyeTarget == 'qtarget' then
        exports.qtarget:AddTargetModel(v.model, {
            options = {
                {
                    action = function ()
                        MenuJobCenter()
                    end,
                    icon = 'fas fa-sign-in-alt',
                    label = 'Register',
                },
            },
            distance = 2
        })
    else
        exports.ox_target:addModel(v.model,{
            {
                icon = 'fas fa-sign-in-alt',
                label = 'Register',
                distance = 2.5,
                onSelect = function()
                    MenuJobCenter()
                end
            },
        })
    end
end

function MenuJobCenter()
    elements = {}
    for k,v in pairs(Config.PedList) do
        for ka,va in pairs(v.SelectJob) do
            table.insert(elements, { 
                title = va.title,
                icon = va.icon,
                description = Config.Lang.details..' '..va.des,
                image = 'nui:DX-JobCenter/img/'..va.img..'.png',
                onSelect = function()
                    local alert = lib.alertDialog({
                        header = Config.Lang.menu,
                        content = Config.Lang.menu_orther..' '..va.title,
                        centered = true,
                        cancel = true
                    })
                    if alert == 'confirm' then
                        lib.progressBar({
                            duration = Config.ProgressTime*1000,
                            label = Config.Lang.progress,
                            position = 'bottom',
                            useWhileDead = false,
                            canCancel = false,
                            anim = {
                                dict = 'misscarsteal4@actor',
                                clip = 'actor_berating_loop'
                            },
                            disable = {
                                move = true,
                                car = false
                            },
                        })
                        TriggerServerEvent('gothic_jobcenter:setjob',va.job)
                        Config.Notify(Config.Lang.confirm,'success')
                    else
                        Config.Notify(Config.Lang.cancel,'error')
                    end
                end,
            })
        end
    end
    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'JOB CENTER',
        options = elements
    })
    lib.showContext('jobcenter_menu')
end

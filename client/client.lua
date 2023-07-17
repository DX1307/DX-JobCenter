ESX = exports['es_extended']:getSharedObject()

exports.qtarget:AddTargetModel(Config.PedList.model, {
    options = {
        {
            action = function ()
                MenuJobCenter()
            end,
            icon = 'fas fa-sign-in-alt',
            label = 'Register',
        },
    },
    distance = 2.5
})

function MenuJobCenter()
    elements = {}
    for k,v in pairs(Config.SelectJob) do
        table.insert(elements, { 
            title = v.title,
            icon = v.icon,
            image = 'nui:DX-JobCenter/img/'..v.img..'.png',
            onSelect = function(args)
                lib.hideContext(onExit)
                lib.progressBar({
                    duration = 5000,
                    label = 'You register at the office..',
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
                TriggerServerEvent('DX-JobCenter:setjob',v.job)
                lib.notify({
                    title = 'JOB CENTER',
                    description = 'Job successfully selected',
                    position = 'top',
                    icon = 'fa fa-check',
                    type = 'success'
                })
            end,
        })
    end
    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'JOB CENTER',
        options = elements
    })
    lib.showContext('jobcenter_menu')
end
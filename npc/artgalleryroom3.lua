local json = require('json')

CHAT_TARGET = '5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ'

Handlers.add(
    'Schema',
    Handlers.utils.hasMatchingTag('Action', 'Schema'),
    function (msg)
        print('Schema')
        Send({
            Target = msg.From,
            Tags = { Type = 'Schema' },
            Data =  json.encode({
                Reward = {
                    Title = "Reward System BazAR",
                    Description = 'BazAR uses a token called PIXL. Users can earn PIXL rewards by maintaining a buying streak on the platform.',
                }
            })
        })
    end
)
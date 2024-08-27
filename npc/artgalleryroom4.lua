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
                Tech = {
                    Title = "Technology Stack BazAR",
                    Description = 'BazAR is powered by AO, a hyper-parallel computing system on the Arweave network. All transactions use AO smart contracts.',
                }
            })
        })
    end
)
local json = require('json')

CHAT_TARGET = 'vlfHBk8angJO6E3CsaRpqFSvlNd_rwMQfQp1-gqjU3E'

Handlers.add(
    'Schema',
    Handlers.utils.hasMatchingTag('Action', 'Schema'),
    function (msg)
        print('Schema')
        Send({
            Target = msg.From,
            Tags = { Type = 'Schema' },
            Data =  json.encode({
                Welcome = {
                    Title = "Welcome Llama",
                    Description = 'Welcome to the BazaAr verse muesuem where you can explore the different collections of assets. You can also trade the assets on the BazaAr. You can also get the collection of assets from the BazaAr. You can also trade the assets on the BazaAr.',
                }
            })
        })
    end
)
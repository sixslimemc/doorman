#> doorman:_/sc/manifest
# @ MANIFEST

data remove storage slimecore:in manifest.pack

data modify storage slimecore:in manifest.pack.pack_id set value "doorman"
data modify storage slimecore:in manifest.pack.author_id set value "sixslime"
data modify storage slimecore:in manifest.pack.version set value {major:0, minor:1, patch:0}
data modify storage slimecore:in manifest.pack.url set value "https://github.com/sixslimemc/doorman/releases/download/v0.1.0/sixslime.doorman.0.1.0.zip"

data modify storage slimecore:in manifest.pack.display.name set value "Doorman"
data modify storage slimecore:in manifest.pack.display.summary set value "Provides on-join and on-leave hooks."
data modify storage slimecore:in manifest.pack.display.author_name set value "SixSlime"

data modify storage slimecore:in manifest.pack.display.links.author set value "https://github.com/sixslimemc"
data modify storage slimecore:in manifest.pack.display.links.info set value "https://github.com/sixslimemc/doorman"
data modify storage slimecore:in manifest.pack.display.links.versions set value "https://github.com/sixslimemc/doorman/releases"

data modify storage slimecore:in manifest.pack.entrypoints set value []
data modify storage slimecore:in manifest.pack.entrypoints append value {id:"main"}

data modify storage slimecore:in manifest.pack.preload_entrypoints set value []
data modify storage slimecore:in manifest.pack.abstract_declarations set value []
data modify storage slimecore:in manifest.pack.abstract_implementations set value []

data modify storage slimecore:in manifest.pack.dependencies set value []
data modify storage slimecore:in manifest.pack.dependencies append value {optional:false, pack_id:"six", author_id:"sixslime", version:{major:0, minor:1}, download:{version:{major:0,minor:1,patch:0}, url:"https://github.com/sixslimemc/six/releases/download/v0.1.0/sixslime.six.0.1.0.zip"}}


data modify storage slimecore:in manifest.pack.is_library set value true

function slimecore:api/manifest
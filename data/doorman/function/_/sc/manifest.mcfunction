#> doorman:_/sc/manifest
#--------------------
# MANIFEST
#--------------------

data modify storage slimecore:in manifest.pack set value "doorman"
data modify storage slimecore:in manifest.version set value {major:1, minor:0, patch:0}
data modify storage slimecore:in manifest.display.name set value "Doorman"
data modify storage slimecore:in manifest.display.summary set value "TODO"
data modify storage slimecore:in manifest.url set value "TODO"
data modify storage slimecore:in manifest.author set value {name:"SixSlime", url:"https://github.com/sixslime"}

data modify storage slimecore:in manifest.dependencies append value {pack:"six", url:"TODO", version:{major:1, minor:0}}

data modify storage slimecore:in manifest.abstract set value false

data modify storage slimecore:in manifest.implements set value []

function slimecore:manifest
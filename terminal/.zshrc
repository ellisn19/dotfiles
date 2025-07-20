alias c='clear'

# Salesforce CLI Aliases
alias sflist='sf org list'                                                  # List all orgs
alias sfpush='sf project deploy start --source-dir force-app'               # Push local source to default scratch org
alias sfpull='sf project retrieve start --source-dir force-app'             # Pull changes from default scratch org to local
alias sflog='sfdx force:apex:log:tail --color | grep USER_DEBUG | grep NWE' # List Apex Debug logs that contain NWE

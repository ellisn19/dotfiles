alias c='clear'

# Salesforce CLI Aliases

# Org management
alias sflist='sf org list'      # List all orgs

# Scratch org lifecycle
alias sfcreate='sf org create scratch'      # Create scratch org
alias sfdelete='sf org delete scratch'      # Delete scratch org

# Project deployments
alias sfpush='sf project deploy start --source-dir force-app'       # Push local source to default scratch org
alias sfpull='sf project retrieve start --source-dir force-app'     # Pull changes from default scratch org to local

#Apex and logs
alias sflog='sfdx force:apex:log:tail --color | grep USER_DEBUG | grep NWE'     # List Apex Debug logs that contain NWE
alias sfapexrun='sf apex execute'                                               # Run Apex code anonymously

# Data commands
alias sfdataexport='sf data export' # Export data
alias sfdataimport='sf data import' # Import data

# SOQL and tooling
alias sfsoql='sf query'             # Run SOQL queries
alias sftool='sf tooling query'     # Tooling API queries

# Metadata
alias sfmdretrieve='sf metadata retrieve' # Retrieve metadata

# Quick help
alias sfhelp='sf --help'
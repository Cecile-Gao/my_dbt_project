select
    account_manager,
    state
from {{ source('google_sheet', 'manager_regions') }}

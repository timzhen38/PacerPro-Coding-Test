# Tim Zhen's Coding Test
## Set Up
- Download the latest version of Ruby and Rails
- Clone this repository
- Navigate to the folder where it was cloned using `cd` in the command prompt
- Install the gems through `bundle install` in the command prompt

## Testing
- Assuming you are already in the folder in command prompt
- Run `rspec spec/models/item_spec.rb`

## Functionality
- `soft_delete`: updates the deleted_at attribute of an Item with the current timestamp
- `restore`: sets the deleted_at attribute of an Item with `nil`
- `default_scope`: excludes deleted items from normal queries

# tiny\_paginate
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

tiny_paginate is a lightweight and easy-to-use pagination gem for Ruby on Rails. Designed for simplicity and minimal overhead, it provides basic pagination functionality with clean helpers and minimal configuration—perfect for small projects or developers who want to avoid the complexity of larger pagination libraries.

## Usage
`tiny_paginate` is simple to use. Follow the steps below to install and use it.

### Installation
Add this line to your application's Gemfile:

```ruby
gem "tiny_paginate"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install tiny_paginate
```
To work with this gem in your application, execute the following command:
 ```bash
$ rails g tiny_paginate:install
```

#### Modify controller
Here, we'll add the following line to setup page instance variable and extract portion of the records:
 
```
@recordings = set_page_and_extract_portion_from(collection: Recording.all)
```
`set_page_and_extract_partion` returns records and also @page instance variable which is available to the views

#### Modify the view
In the page where you want to display the records, paste the following entries, assumming that you have a model called recording:
```
<p>
  <%= link_to("Previous Page", recordings_path(page: @page.previous_page)) unless @page.first_page? %>
  <%= link_to("Next Page", recordings_path(page: @page.next_page)) unless @page.last_page? %>
</p>  
```

### Update
After installation, you can use the most recent version of `tiny_paginate` by running the following commands:
```bash
$ bundle update --conservative tiny_paginate
```
and then execute:`
```bash
$ rails g tiny_paginate:install
```
Continue to update the controller and view if you've not done so already.


## Contributing
* Close the Repo
* Create a branch with the changes you desire
* Create a PR against the main branch 

PR will be approved and merged upon review by the repo gem owner.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

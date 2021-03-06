# Volunteer Trackers Anonymous
#### *Created By: Zack Rutledge*

## Description
This is an application to keep track of various Projects and Volunteer employees associated with these projects.<br>
It utilizes Ruby and SQL database servers to create an enviroment and track the information.

The Database's Table Structure is displayed below:
<br>
![Diagram Example](/public/img/Diagram.jpg)

* * *

## Technologies used

* Ruby
* Rspec
* Sinatra
* Capybara
* PostgreSQL
* Embedded Ruby (ERB)
* pg
* Bundler
* Pry
* HTML
* CSS
* Bootstrap
* git

* * *

## Installation :

* **Ensure you have PostgreSQL installed correctly.**

* Go to (https://github.com/Dethik/Volunteer).

* Navigate to the code button on the github website.

* Click on the code button to open the menu.

- Copy the HTTPS code by clicking the clipboard next to the link.

- Within your Bash terminal navigate to your desired location by using cd followed by your desired directory.
```bash
 cd Desktop
```

- Once you have chosen your desired directory use the command.
```bash
git clone https://github.com/Dethik/Volunteer
```

<div
  style="
    background-color: #d1ecf1;
    color: grey; padding: 6px;
    font-size: 9px;
    border-radius: 5px;
    border: 1px solid #d4ecf1;
    margin-bottom: 12px"
>
  <span
    style="
      font-size: 12px;
      font-weight: 600;
      color: #0c5460;"
  >
    ⓘ
  </span>
  <span
    style="
      font-size: 12px;
      font-weight: 900;
      color: #0c5460;
      margin-bottom: 24px"
  >
    Note :
  </span>
  If you have any problems make sure your HTTPS code is correct! The example above might not be the most recent HTTPS code!
</div>


* Within the chosen directory, use the command:

``` bash
code .
```

* Download Gem bundler with the command:

``` bash
gem install bundler
```

* Install dependencies with the command:

``` bash
bundle
```

* Setup database with the following commands:

``` bash
createdb volunteer_tracker
```
``` bash
psql volunteer_tracker < database_backup.sql
```
``` bash
createdb -T volunteer_tracker volunteer_tracker_test
```

* Run tests with the command:

``` bash
rspec
```

* View the site with the command:

``` bash
ruby app.rb
```

* Then, in your browser, navigate to `localhost:4567`

## Testing
* This project was created using **test-driven development** (TDD).

* To view the test suite, open the spec folder

* To run the test suite yourself and verify program functionality

```bash
rspec
```

## Addition comments:
* Created on 3/12/21

* * *

## Contact Information

_Zack Rutledge: [Email](thorgrim88@gmail.com)_

* * *

## License
> [GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
> Zack Rutledge &copy; 2021

* * *
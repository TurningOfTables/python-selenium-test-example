# python-selenium-test-example
A sample project for Python Selenium tests using [Robot Framework](https://robotframework.org) with an included sample site and a few basic tests that run against it.

The tests can be found at ```./tests```

The sample site ```./sample_site```

## Prerequisites
* [Python](https://www.python.org/downloads)
* [pip](https://pypi.org/project/pip)

## Installation
```pip install -r requirements.txt```

## Run Tests
```robot test/*.robot```

## Annoyances
At the moment a 'DevTools listening' line is output during each test, but passing a --disable-logging option when starting Chrome doesn't seem to help.

## Sample Site
The included sample site in ```./sample_site``` is a simple, static HTML page with a CSS and JS file. The only external dependency is jQuery which is loaded from the code.jquery.com CDN as described on the [jQuery site](https://code.jquery.com/)

Note that the included site has a simulated login functionality, but it doesn't actually do anything - the password is hardcoded and not intended to be real authentication.

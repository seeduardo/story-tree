# Story Tree Report

Story Tree functions by creating ‘tree branches’ from a ‘root’ sentence, each of which in turn become the ‘trunk’ for the ‘tree branches’ to come. I opted for this nomenclature to facilitate my own conceptualisation of the application’s flow, not to mention the way the app’s simple database could be structured, as well as prompting a potential future visual interface to make the user experience more intuitive.

I decided to use Ruby on Rails as I was already familiar with the framework, and knew that there are plenty of useful features built into Rails to get the structure of the application up and running quickly, simply and elegantly. For instance, creating the schema for my single ‘tree_branches’ table could be done at the same point at which the skeleton of the rest of the application (with corresponding model, view and controller, as per the MVC application design framework) was also created. This definitely got things going fast, allowing me to concentrate on the logic needed to correctly wire up all the moving parts, though using such generators/helpers also means there are a number of files and folders not really contributing to the functionality of the app - but these can easily be stripped back once the application is working, and don’t really get in the way too much in the meantime. Should the application ever get bigger, however, this would definitely have to become more of a pressing consideration, if only to allow other contributors not to get bogged down with extraneous or irrelevant code.

However, my main concern was the first of the three steps on the path to making a good application:

	* first make it work;

	* then make it pretty;

	* then make it efficient.

I prioritised making it work because it seemed to me that this exercise was looking mainly at the ability to get something quite specific off the ground as soon as possible. In addition, the emphasis on using a server-side framework without any JavaScript doing the heavy lifting on the front end might be looking at the ability to manipulate data in tables at the same time as considering user experience, rather than as two separate yet interacting things. This is why I began with a plain Rails project, mocked up the look of the page using plain HTML, and then iteratively refactored each form-like element (with a focus on the ‘sentence’ attribute of a new ‘tree branch’, as well as its directionality) to work with Rails’s extremely useful in-built helpers and syntax.

# Q0: Why is this error being thrown?

We haven't yet defined the Pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

We have seeded our database with Pokemon. All of the possible Pokemon that appear are in
the database, and they all have id's that we can use to access them.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It is a medium-sized button that when clicked on, takes you to the capture_path as
defined in routes.rb. The method tells the button what kind of http request it is
performing. When we reference :id in the capture method of the Pokemon controller,
we will be using the Pokemon's id because of capture_path(id: @pokemon). We are
specifying the :id used in this path to be that of the Pokemon.

# Question 3: What would you name your own Pokemon?

Bayabra (?)

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

In the redirect_to, I passed in trainer_path(:id => current_trainer.id), which is the url
/trainers/id of the current trainer. So, this path needs the id of the current trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

We created validations so that when creating a Pokemon, the inputed name must exist and be
unique. So, when these conditions aren't satisfied and an error results, we use the line
"flash[:error] = @pokemon.errors.full_messages.to_sentence" to convert the errors into a
sentence to display it on the form. application.html.erb renders these 'layouts/messages'.

# Give us feedback on the project and decal below!

It would be really awesome if the instructors could post on Piazza as soon as their office hours are starting
and include in the post where they are within the specified location of their office hours. I once spent the entire duration of an office hours looking for the instructor and posting on Piazza only to not find them, which I feel is annoying to the instructor/course staff and also prevents me from getting help.

Other than that, I really enjoy learning Rails.

# Extra credit: Link your Heroku deployed app

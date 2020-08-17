# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: The name of the foreign key would be "animal_id" and it would belong to the Sightings model. The foreign key is always in the belongs_to side.

  Researched answer: It should be "animal_id:integer"



2. Which routes must always be passed params and why?

  Your answer: DELELTE, EDIT, UPDATE and SHOW routes must always have params pased because you hvae to specify which of the many Objects of a model, or which parameter of many parameters, you are planning to work with.

  Researched answer: Same



3. Based on your knowledge of Rails conventions, write a route for a webpage called "game" that takes in a parameter called "guess" with a controller called "main".

  Your answer: get 'game/new' => 'main#new' 



4. Name three rails generator commands. What is created by each?

  Your answer: 
  1) rails g new model Example attribute1:integer attribute2:string
  This creates a new model to store data in. It will have two columns, one that takes an integer value and one that takes in a string value. 

  2) rails g new controller Example 
  This creates  controller file for the Example model, which handles how different actions are handled and displayed.

  3) rails g new migration Example 'change_integer_to_string_of_attribute1'
  This creates a migration fil for the Example model so that a change can be made the the schema.

  Researched answer:
  1) rails g model Example attribute1:integer attribute2:string
  This creates a new model to store data in. It will have two columns, one that takes an integer value and one that takes in a string value. 

  2) rails g controller examples_controller 
  This creates controller file. It's not specified directly for which model this controller is for other than the name. The methods and instance variables you specify in the controller determine which model the controller is for. It could be potentially for several. The controller, in general, manages how different actions are handled and displayed.

  3) rails g migration 'change_integer_to_string_of_attribute1_in_examples'
  This creates a migration for for the Example model so that a change can be made the the schema.


5. Consider the Rails routes below. Describe the responsibility of each route.

method="GET"    /users: Get the information of all of the users          

method="GET"    /users/1: Get the informatio of only user1. 

method="GET"    /users/new: Bring up a form so the user can create a new account.

method="GET"    /users/edit/1: Get the information for user1 on a form so that it can be editted.   

method="POST"   /users/: Linked to a create method. Posts the new user profile onto the table.   

method="PUT"    /users/1: Puts the updated information form the edit of user1 onto the model.    

method="DELETE" /users/1: Deletes the profile of user1.

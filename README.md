# springfield-school-management
CUBA example that shows how to build a school management system for simpsons land.

The main purpose of the example is to show how to deal with a hierachy of entites. In this example we have the following entities:

* Person
* Teacher
* Parent

* Grade
* TeacherType

Teacher and Parent are subclasses of Person. They use the same database table for the common attributes 
and a JOINED table strategy for the attributes of the subclasses.

In the UI, there are UI screens for the base class as well as the subclasses. 
In the concrete classes you can add the subclass specific attributes as well as the attributes of the base class.


![teachers browse screen](https://github.com/mariodavid/springfield-school-management/blob/master/img/teachers-browse.png)


![teachers editor screen](https://github.com/mariodavid/springfield-school-management/blob/master/img/teachers-editor.png)


![persons browse screen](https://github.com/mariodavid/springfield-school-management/blob/master/img/persons-browse.png)



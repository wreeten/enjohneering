### Programming Terms 
[https://youtu.be/-H7PXerOgiY]

---
The link above is where we will get our information from, and will take notes from here along with the timestamp.


1. Abstraction - The process of hiding implementation details and separating funcionality from its implantation.
example, like dog breeds, aka chihuahua - concrete or specific.
dog is more abstract - general
when writing in object oriented style.
This purpose is for writing an abstract dog class rather than concrete dog breed classes, it's easy to understand how dog works or operates with the behavior it has. Doesn't matter what breed, because dog operates all the same. 
Make general, hide details, make it easy for users to use this class.
2:52


2. Inheritence - The ability for a class to reuse functionality and properties from another class while potentially overiding the reused behavior.
Employee, manager, superviser. These 3 roles have similar information/behvaior. Instead of writing 3 different classes, we can make a base class, like employee, something common. Then in manager and supervisor class, they would inherit from empoloyee class and reuse all of the funcionality without rewriting inside of the classes. 3:44


3. Abstract Class - a class designed to be used as a base class in an inheritance hierarchy. It may provide concrete implementations but never be instantiated.
To act as the base or the parent class and an inheritence hierarchy, but is not inteded and should not be instantiated. Meaning we are never going to make a concrete instict of this abstract class, so i will never make an object of the type of this abstract class. Employee supervisor from previous example, if it was turned into an abstract class then we wouldn't be able to make an isntance of it any further because it's only role is to act as a superclass for concrete classes before it. 
Abstract method, you want every subclass inheriting from it to implmement on its own.
The point of this is to provide base behavior for "concrete 
implementations" of this class 
5:07


4. Interface - an abstract type that is used to specify a behavior that classes must implement
You can view object of type linked list as simply as the link interface, without knowing other functionality - kinda lost me there. I'll read into it 
6:30


5. Polymorphism - poly and morph. Many forms. We can have something exhisting in multiple forms.
"The concept that objects of different data types can be accessed through the same interface. This really means a single object class can be treated as a different type based on the contect it's used in."
Underlying concept that defines oop  and allows for funcionalities exist.
Example, if something like type manager, but manager inherits from employee. We can treat this object that is of type manager like it is of type employee because it implements the funcionality of employee class.
One object can be treated different ways and have slightly different behavior or access to behavior based on the context used in our program. 
8:16


6. Server Side / Backend - refers to the programs and operations that are running on a server ( a remote machine). This code is not accessible to the user/client.
Like the browser renders html happening on client side, but retrieving the html from the server running the website. User cannot manipulate the data in the file, only send requests to the server  
9:50


7. Process - an application or program running on an operating system that is allocated its own memory and contains at least one thread. Process, like OBS or a video game, or any application can be thought of as a process. The processing system stores ram for that data, two processes can't share data, at least not easily. 
Thread - a part of a process that can be executed independently and typically shares memory with other threads
Example, you have a website and downloading. if you only had a single thread, as soon as you started downloading, you can't use the website. which is why you need more than one thread. - oversimplification 
13:35


8. Concurrency - The ability to execute more than one program or task simultaneously. The processor is able to switch between different threads and work on different threads at the same time. - Oh this explains VHDL LOL 
15:40


9. Parallellism - use of parallel processing in computer systems, multiple cores is the amount of operations you can do at the same time in parallel. 1 cpu = 1 operations  
16:50


10. Asynchronous - event loop is constantly running and knows when something is started, finishing, or in prograss. A means of parallel programming in which a unit of work runs separately from the main application thread and notifies the calling thread of its completion, failure or progress. 
17:50


11. Binary - yes or no, or a base 2 numbering system used at the hardware level of computers to perform computation. 1 or 0 or bits, because we have transistors in a comptuer carrying a signal. We have abunch of logic gates and based on the value of a signal, outputs another electrical signal like AND OR NOR XOR XNOR whateva, this makes so much sense. 
19:18


12. Bit - smalles unit of data measuring storing 1 or 0, and byte is 8 bits where it represents 256 unique numbers.
Oooof I should go over ece420 textbook and brush over. 
20:10

13. Hexadecimple, base 16 number system comonly used to simplify binary and represent colors in html and css 0 to F
end
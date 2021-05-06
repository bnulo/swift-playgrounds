
//: A UIKit based Playground for presenting user interface

/*
The rule of thumb is: Am I (the caller object) the only owner of the other object:
 😀 YES: Use unowned. The lifetime of the object I own shouldn’t exceed my own lifetime. Does the code crash? Awesome! We’ve (probably) found a memory leak and we can fix it.
 
 🥸 NO: Use weak. We have no control over the other object’s lifetime. The callback can be called even when the caller is deallocated.
 =================================================================================
 ⚠️Important ⚠️
 Do not blindly follow the rule above. It’s just a rule of thumb. Always make your own
 assumptions about the system you’re working with and use weak and unowned accordingly.
 
 
 ⚠️Don’t be afraid of crashing! Crashing early in the development cycle is better than shipping code with hidden bugs.⚠️
 =================================================================================
 
 */

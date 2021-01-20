# flow

Authentication with firebase dynamic links and firebase auth. Used Domain Design Driven architecture inorder for this system to be integrated with other domain features and to scale up easilly.

Sign up feature

Most services Authentication feature use the approach which is creating a user on a database when a user provides a valid email and password without verifying the emailAddress.
with the above approach its possible to restrict some features until the users email gets verified. The problem with this approach is some malicious folks might use  email address they don't own to sign up and the authentication system will create a user on the database. when the owner with the email address wants to sign up, the system will respond with email already exist response which might surprise the owner since he did not sign up on the system. this will be a discomfort for a potential user and he have to do some extra work like reseting the passeord inorder to use the email to sign in.

Unlike the other authentication systems this Authentiacation feature only allows user to be created on the database if the email is verifed. 
when the users enters their email address for signup, they will soon receive an email address with a dynamic link to confirm their emailAddress and navigate to the app.
the app will handle the incoming link with firebase dynamic links and navigate the user in to the password section to enter their password and finaly register as a user.

<p float="left">
  <img src="/screenShots/Screenshot_20210120-092957.jpg" width="150" />
   <img src="/screenShots/Screenshot_20210120-093003.jpg" width="150" />
    <img src="/screenShots/Screenshot_20210120-093010.jpg" width="150" />
   <img src="/screenShots/Screenshot_20210120-093029.jpg" width="150" />
   <img src="/screenShots/Screenshot_20210120-101926_Gmail.jpg" width="150" />
     <img src="/screenShots/Screenshot_20210120-111702.jpg" width="150" />
   <img src="/screenShots/Screenshot_20210120-112759.jpg" width="150" />
</p>

Login Feature
<p float="left">
 <img src="/screenShots/Screenshot_20210120-110156.jpg" width="150" />
   <img src="/screenShots/screenShots/Screenshot_20210120-112759.jpg.jpg" width="150" />
</p>
Third party Authentication
<p float="left">
 <img src="/screenShots/Screenshot_20210120-112118_Google Play services.jpg" width="150" />
   <img src="/screenShots/screenShot/Screenshot_20210120-112759.jpg" width="150" />
</p>

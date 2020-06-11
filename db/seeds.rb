# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Step.destroy_all

User.create(name: 'Nadia')
User.create(name: 'Robert')
User.create(name: 'Onie')
User.create(name: 'Marcus')

gandalf = Project.create(
  title: "Gandalf the Grey's Wizard Hat", 
  user_id: User.find_by(name: 'Nadia').id, 
  likes: 0)
gandalf.image.attach(
  io: File.open('./public/gandalf_project/Gandalf1.jpg'),
  filename: 'Gandalf1.jpg',
  content_type: 'image/jpeg'
  )

Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 1,
  heading: "Introduction: Gandalf the Grey's Wizard Hat",
  content: "Let me start by saying I am a big fan of Lord of the Rings -- and all things Tolkien related. I still remember the first time I picked up a copy of The Hobbit in my elementary school library as a fifth-grader, and how many of my teachers and older family members told me I was in for a real treat. One of the most beloved characters in The Hobbit and Lord of the Rings is Gandalf the Grey, later Gandalf the White -- although \"many are his names in many countries.\" When Tolkien first mentions Gandalf in the first chapter of The Hobbit, he describes Gandalf this way: \"All that the unsuspecting Bilbo saw that morning was an old man with a staff. He had a tall pointed blue hat, a long grey cloak, a silver scarf over which his long white beard hung down below his waist, and immense black boots.\" ...So a little different from how the wonderful Sir Ian McKellen portrayed Gandalf in the films. Both versions, in my opinion, are completely valid, however. Tolkien's inspiration for Gandalf can be traced to a postcard he said he bought while on holiday in Switzerland (although the origins of the postcard have been debated). The postcard is called Der Berggeist (German for \"the mountain spirit\"). The postcard was a reproduction of a painting of an old man with a white beard sitting under a tree in the mountains. On the back of the postcard, Tolkien wrote \"The origin of Gandalf.\" So with all that being said, if you can get ahold of some blue-grey felt, as opposed to the dark grey felt I used, that would be more true to the books as well as Tolkien's original vision of Gandalf. But I think a medium-dark grey felt works just fine. Okay, let's get started! For this project, you'll need:  "
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 2,
  heading: 'Supplies:',
  content: 'Two yards of grey felt. Cotton batting. Matching thread. Sewing machine. Scissors. Marker. String/yarn. Polyfil stuffing. Sewing needle'
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,  order: 3,
  heading: 'Step 1: Make a Circle',
  content: "This is the felt I used -- two packages, each containing one 36\" x 36\" felt piece, which is one square yard. If you were making a hat for a child, you might be able to get away with only using one yard, but I was not able to cut out two circles from one yard. I'm happy I thought to buy two. Tie a piece of yarn to a marker and cut it so it's 10 inches long, from the marker to the end. Make a dot in the center of the felt and then, while holding the end of the yarn in between your thumb and index finger in your non-dominant hand, use your dominant hand to draw a circle. This is essentially a very simple compass and how to make a ~20\" circle. It might not end up exactly 20\" but that's okay."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,  order: 4,
  heading: 'Step 2: Cut Another Circle',
  content: "Cut out the 20\" circle you just drew. Place that circle on top of more felt, pin it, and cut that out too. So now you should have two 20\" circles. With the string of yarn still on your marker, cut the length of the string so it's 4.5\" long, from marker to end. Using the same method you used to draw a circle in the last step, draw a smaller circle in the center of the felt circle. This inner circle will roughly be about 9\"."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,  order: 5,
  heading: 'Step 3: Cut the Brim Pieces',
  content: "Cut a slit to get to the circle and cut it out, leaving it in one piece so you can use it later. Now cut a wedge from the donut shape. But before you cut, you can overlap the pieces and test it on your head to make sure it will still fit. Cutting out this wedge will allow the brim of the hat to have a downward, outward slope, similar to Gandalf's hat's brim. The wedge I cut out from my brim was about 5\" at the widest part, but yours may (and probably will?) differ, as people have different sized heads. So just make sure you test it on your own head before cutting. Place right sides together and pin -- do that for both donut shapes."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 6,
  heading: "Step 4: Cut the Batting",
  content: "Cut a piece of cotton batting (this is the stuff I used, but any kind will do) in the same shape as the felt brim pieces. To do this, all I did was fold the batting in half, place one of the brim pieces (that's also folded in half) on top, and trace around it with a marker. Then I cut it out slightly smaller than what I had drawn, placed the right sides together, and pinned. So now you should have two felt brim pieces and one cotton batting brim piece. Now head to your sewing machine!"
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 7,
  heading: "Step 5: Sew the Brim",
  content: 'With the right sides pinned together, sew on your machine, leaving about 3/4" seam allowance. Now we have a closed donut shape again, but with a slope. Do this for all three brim pieces.'
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 8,
  heading: "Step 6: Sew the Brim, Cont.",
  content: "Place the two felt donut pieces right sides together and sew around the perimeter. Snip around the edge with a pair of scissors just up to the seam you just sewed, but not further. Turn right side out."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 9,
  heading: "Step 7: Sew the Brim, Cont.",
  content: "Sew the cotton batting in the same manner and insert it in between the two felt pieces. The cotton batting, while not entirely necessary, will stabilize the brim more and make it less flimsy."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 10,
  heading: "Step 8: Sew the Brim, Cont.",
  content: "Sew a top stitch around the perimeter of the brim, and then again around the inside of the brim."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 11,
  heading: "Step 9: Make the Pointy Bit",
  content: "To make the conical part of the hat, take out a piece of felt that\'s at least 25\" by 25\" and fold it in half. Measure 21\" and mark a dot with a marker. Move the measuring tape over, keeping it at the same spot where you marked the dot, so it makes a triangular shape, and draw a straight line. Cut it out. This will be a little too big for the hat, but it\'s a good start."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 12,
  heading: "Step 10: Sew the Hat",
  content: "Fold the brim in half. Match up the triangular top part of the hat to the brim where it will eventually be sewn. This should give you a rough idea of where to sew. Mark this point with your marker and cut a straight line from that point to the pointy part of the triangle."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 13,
  heading: "Step 11: Sew the Hat, Cont.",
  content: "Leaving a 1/2\" seam allowance, sew the cone part of the hat. Turn it right side out. I used a chopstick to help me turn the more difficult parts right side out, but a knitting needle or a crochet hook might work too."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 14,
  heading: "Step 12: Sew the Brim to the Hat",
  content: "Place the cone part inside the brim part (right sides together) and pin them together. I chose to hand sew at this point, just because I don\'t even think my machine could fit four thick layers like this. All I did was use a small running stitch and securely knotted it once I made it all the way around."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 15,
  heading: "Step 13: Stuff the Hat",
  content: "At this point, the hat looks pretty silly. So to make it resemble Gandalf\'s hat a little bit more, we need to stuff it. I probably used about five or so large handfuls of poly-fil stuffing, but you can stuff it however much you want. You don\'t want stuffing to just fall out of the hat, (and I forgot to take a photo of this part) so you can use one of the circle pieces you cut from the \"donut\" pieces earlier and hand-sew that inside to keep the stuffing from falling out. Just make sure it\'s far enough inside that the hat is still able to fit on your head."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 16,
  heading: "Step 14: Scrunch at the Seams",
  content: "Using a needle and thread, sew at various parts of the back of the hat. Gather the thread tightly so it makes a slight curvature in the cone part of the hat. Do this all along the back seam. You can even do a little bit on the other side to make it curve slightly upwards. Just make sure to knot the thread when you\'re finished so nothing comes undone."
)
Step.create(
  project_id: Project.find_by(title: "Gandalf the Grey's Wizard Hat").id,
  order: 17,
  heading: "Step 15: Finished!",
  content: "And that\'s all it takes to make a hat similar to Gandalf the Grey\'s. I love it. I\'ve been wearing it all around the house just for fun.  I think it would do well for a Gandalf cosplay, or, in other colors, it would make a good hat for a general, generic wizard/witch costume."
)


# Wireless Tin-Can Telephone
Project.create(
  title: 'How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)',
  user_id: User.find_by(name: 'Onie').id,
  likes: 0
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 1,
  heading: "Introduction:",
  content: "Just the other day, I was in the middle of a very important phone call when my banana phone stopped working! I was so frustrated. That’s the last time I miss a call because of that stupid phone! (In hindsight, I may have gotten a little too angry in the moment, see pics)  It was time for an upgrade. Enter the wireless tin-can telephone! The all new and improved gag phone, for all my fake communication needs!   Here’s how I built it!"
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 2,
  heading: "Step 1: Tools and Materials",
  content: "For this project, you’re going to need quite a few electronics, and a couple tools. 
  Tools - Drill w/bits, Tin Snips, Hot Glue Gun, Needle Nose Pliers, Ball-peen Hammer
  Materials - (Two of all of These) - DFDuino Uno R3, Gravity Expansion Shield(optional), Analog Sound Sensor, 386 AMP Audio Amplifier, 6AA Battery Holder w/ DC Barrel Jack, Six AA batteries, NRF24L01+PA+LNA With Antenna, Tactile Button, Aluminum Coffee Can, Jumper Wires
  "
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 3,
  heading: "Step 2: Prepping the Cans",
  content: "Before we can wire up the electronics, we’ll need to prep the cans. To do this, we will be drilling two holes, one for the antenna, and one for the button.  I started with the antenna hole. First, I placed the antenna board inside the tin can, to measure how far from the side the hole would need to be. Then, using my finger to note the ridge, I marked the hole with an Whiteboard marker, so that I could wipe them off later. Then, using a tap, I put a small indentation where I was going to drill. This will help guide the drill in the next step.   Depending on the antenna you use, you may need a smaller/larger hole. So what I did to find the right size, was compared the threads on the antenna to the drill bit sizes. Alright, SAFETY GLASSES ON!  Once you’ve picked a size and marked out the hole, drill into the can, go at a high speed, but don’t push too hard. Because of how flimsy the tin can is, it will usually shear, so watch for sharp metal. Use tins nips and pliers to clean up this edge.   Then it’s time for the button hole. This one’s a little different.   First, I unscrewed the plastic “nut” from the button. Then I placed the nut onto the location I wanted the hole, and marked the inside diameter. Then I drilled five holes, and used tin snips to clean the material out and form it into a circle. Mark the hole, tap it, and drill.  STOP! It's HAMMERTIME! After this, I used a hammer and pliers to knock in the metal tabs and bend them down.  Please refer to the images for a better idea of how I did this. I’ve provided a shoddy diagram that should be able to help you out.   Once that’s done, you can screw in the antenna and the button. Again, be careful of any sharp metal bits!"
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 4,
  heading: "Step 3: Hot Glue Gun Time!",
  content: "Now let’s glue in the components! First, plug in your hot glue gun and wait for it to heat up.   *Jeopardy theme begins to play...* Then, use hot glue to secure the antenna board against the can. I also suggest coating the metal part of the antenna that sticks through the can with glue, so it won’t ground out to the can.   Glue the Arduino Uno to the bottom of the can, and then attach the battery pack. This will be the heaviest part, I suggest apply glue to the edges and then placing it where you want the can to rest (so the antenna points upwards). The battery pack will always be the natural center of gravity for the can.  I glued the speaker on one side of the battery pack, and the microphone on the other. (Refer to the pictures) This was primarily for aesthetic purposes, and wire management.  Make sure to use lots of glue so that none of the pins ground to the tin can."
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 5,
  heading: "Step 4: Wiring the Circuit",
  content: "Once everything is securely glued in, it’s time for wiring! Use the provided schematic to connect all the jumpers to their appropriate pins. I’ll also provide the pin-outs below: (Note, this is for the Gravity Expansion HAT)  Antenna Board:  Analog Sound Sensor: Audio Amp:  Switch:  Here’s a brief explanation of the circuit (to hopefully benefit anyone using a different board). Because of the RF24Audio Library we are using, there is a very specific pinout for the microphone, speaker, switch, and antenna: The Microphone signal pin will always go on A0 pin.  The Switch (for switching to transmission mode) is always the A1 pin.  The Audio Amplifier I’m using doesn't matter where it’s plugged in, as long as it has power. What matters is the wire you are using for audio transmission, which by default will be pins 9 and 10 (for left and right audio).  The Antenna pins CE and CSE are always connected to pins 7 and 8 respectively (which is what allows both directions of radio signal)   Hopefully this information will help you wire this circuit on any board."
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 6,
  heading: "Step 5: Pushing the Code",
  content: "It's time to push some code! The program for this project is SUPER simple thanks to the RF24Audio Library. It’s literally not even 10 lines of code! Take a look: I won’t be explaining how it works here, but if you’d like to learn more about Arduino IDE and what this code means, check out this link. You'll also need to install the RF24 and RF24Audio Library as well, which you can download here. Once you’ve got the Arduino IDE installed, download the Arduino program provided, and open the code. Look under the Tools drop-down. Make sure “Programmer” is set to AVR ISP, and Board is set to Arduino UNO (or whatever board you are using). Also confirm that you are on the right Port (it should say “Arduino Uno on COM#”)  Now we are ready to push the code. Plug in a USB cable to the Arduino and the computer, and click the Upload arrow in the top left of the IDE. The code should upload and you may hear a quiet buzz.  If you are getting these results, then the program should be running correctly and everything should be connected the right way."
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 7,
  heading: "Step 6: Testing It Out",
  content: "To test it out, you’ll need to turn both cans on. Press the button down on one can, and make some noise into the microphone. Can you hear audio coming from the other can? Try the same thing on the other can. Hear anything?  If so, it works and you’re done! Note: If you’re getting interference or buzzing, check for grounding problems. Make sure none of the leads are touching the can, and that there’s plenty of glue between components. Try to avoid twisting around each other, as this will increase interference. I also suggest covering the metal part of the antenna with electrical tape to prevent it from grounding to the can.  Once you know it works, try to test the distance too; it should go up to a kilometer if there’s nothing blocking the signal!"
)
Step.create(
  project_id: Project.find_by(title: "How to Make a Wireless Tin-Can Telephone! (Arduino Walkie Talkie)") .id,
  order: 8,
  heading: "Step 7: Conclusion",
  content: "Congratulations, You’ve made it to the end! Awesome job building this project!  Thank you for reading my Instructable, I hope you enjoyed watching the video and I hope you found it very entertaining.  I’d like to disclose that this project was sponsored by DFRobot, they made it possible for this project to exist by supplying all of the parts, so feel free to go give them some love!   Update: I’m entering this Instructable in the Arduino Competition, so if you enjoyed this project, please give it a vote with the orange button down below!  UpdatedUpdate: I’m also entering the Arduino Make-From-Home Contest, so I’d love if you could go show me your support on those sites as well!  Updated Update on the Previous Update: I'm also in the Hackaday.io Making Tech at Home Challenge, so go vote for it here! Follow me for more cool projects like this, and go make something! Always keep learning. :)    - Geoff M."
)
## K-Pop Project Review


* Site publication: <http://kpop.newtfire.org/>
* GitHub: <https://github.com/PiperBaron/KPopRepo>
* Developers: Piper Baron and Are'anna Russell
* Date of Evaluation: 2020-12-30
* Evaluated by: @ebeshero

### General  
The K-Pop project team took great care in all the details of production and design, and that dedication shows in every line of code and every page on the site. The result is a highly professional site directed to many kinds of readers, those who come to learn about K-Pop having heard of it in the news, those already immersed in it, as well as coders from within our student learning community on Newtfire. One of the features of the K-Pop site that I appreciate the most is its cultivation of networks: its links out to the resources (like Genius.com) that helped you launch the project, and links to information that help K-Pop newbies like me to understand the distinct parasocial culture of its international fan base, er, I mean, ARMY! 

 In my comments here I will provide you advice and suggestions with the hope that you will want this site to take on a public-facing life of its own, and that is read and appreciated not just by your peers and professors at Penn State Behrend, but by anyone excited to learn more about K-Pop! 
 
### Research questions
Your detailed and meticulously organized, schema-driven XML markup helped you to track the roles of K-Pop performers and the distribution of their lines. You were able to analyze the structures of K-Pop songs to see how similar they are for number of verses and choruses. And your markup helped you to explore media outputs: to count the albums and album types of each band and compare them, while examining data about each band’s popularity. The site is as a result impressively informative!

###  “UX”: User Experience and Site Interface

#### Site banner and index page
The big picture of how you invite people to your site is probably the one area that could use a little more tinkering. It strikes me right away that the font for the site title is larger than the fonts for internal sections. Now, your title is long, “K-Pop Songs, Tranlsations, and Profiles“, and I like that the title banner doesn‘t get in the way of the rest of your pages, but I wonder if you might do something to, well, make the word “K-Pop” itself stand out, without enlarging the banner at the top? And what if you made “Songs, Translations, and Profiles“ more of a subtitle  so its font stays small? 

*Leading* with your About page is a little unusual, because it puts a lot of text at the front of the site. This seems to prioritize a more academic audience, but you don’t really need to do that—we readerly types will still be here if you don’t address us front and center, but you may want to do something more to grab the attention of people looking for K-Pop sights and sounds! One suggestion would be to put up a more visual graphic banner on the front page and then lead us directly into the gates of your detail-intensive pages. An alternative suggestion is to leave the site structure just the way it is, and just add an impressive image between the nav bar and the “About This Project” section. A couple of project sites to look at for ideas might be [Hamilton](https://hamilton.newtfire.org/) or [Ulysses](http://ulysses.newtfire.org/). The Ulysses team leader took some time just experimenting with CSS and scroll effects after the semester was over and I remember she was pretty happy with dressing up her project. Here is one more site that might be interesting for its super simple use of a narrow top banner, featuring the site name side-by-side with a menu: <http://newsanalysis.newtfire.org/>.

This site is a place to LOOK, LISTEN, and LEARN about the K-Pop sensation! I found myself toying with one-liners like this as a simpler invitation for a very wide audience (potentially a very young audience) to enter and explore the details of your wonderful site.

That said, the writing on the site is wonderfully helpful—offering the reader a detailed and attentive guided tour. On that note, it is rare to find an error, but I spotted one on the index page at the start of the second paragraph under “About This Project”: change “afforementioned” to ”aforementioned.“

#### Internal pages
You have lots of information to share on every page, and you figured out a good strategy for organizing landing pages for the Groups and Songs, as well as layouts for each group, and each song interlinked to its group and vice-versa. The Group Profiles remind me a little of old-fashioned baseball cards with pictures most prominent followed by stats that the fan-base cares about. 

The song pages feature a more complex layout with metadata at the top, followed by an embedded video, and then the two panes for the lyrics showing Korean and facing English translation. My one thought here might be to try and close up some of the open space at the top of these pages to reduce scrolling to the video + lyrics. What about an HTML table to hold the Album, Producers, Writers, Label, Release Date, and Group page info side-by-side instead of vertically, since these sections do not contain much text? (Or you could accomplish this side-by-side arrangement using a CSS flex container. 

*Perhaps* experiment a bit with moving the “Song Meaning” section *after* the lyrics, to give each page a bit of conclusion?

The JavaScript on these pages is meticulously crafted and color-coded in a way that matches up with your Analysis page! That makes me wonder:
What if you set each line-distribution SVG inside the page for its corresponding Song? I say this because I think it might enhance the visibility of this impressive SVG work you did, and because that SVG is most easy to read and understand in connection with your JavaScript work on each Song page.

Then, I’d recommend saving the Analysis page to hold visualizations that *compare* groups or songs. You might even rename that page, ”Comparison Infographics’ or something comparative: “Comparing the Bands?” 

 
### GitHub
This team worked together very effectively the whole semester and left a detailed and well-documented record of your work through GitHub. The repo is very well organized and I hope that the care you took with it will make it easy to pick up your work and revisit it, move it, rearrange things, whenver you wish! Try adding a link to the README.md directly to your website, by the way, so visitors on GitHub can quickly find the website you built. In a way, both of these are your sharable home base for the project: the GitHub repo and the website, and it's good for each to reference the other. 

### Closing Comments
It has been a great pleasure working with this project team, and trying things like fine-tuning a Schematron to manage your intricate code from early on, as well as sharing that code with the class as a base for our collective learning. Thank you for your amazing work on this project, which deserves a lasting reputation as one of our most exciting projects coming out of Newtfire and DIGIT! I hope that each of you will be as proud as I am of this project and link to it from your professional web portfolios. Don't forget to add links to this from your personal websites. This is a project I'm especially proud to be part of and I look forward to featuring it to future classes for lots of students to be learning from. But in saying that I hope you will still come back to this project as a place to learn and experiment and just have fun tinkering with it, and if you ever have questions or want help with this, keep in touch and “ping” me, as ever, from the GitHub repo! 

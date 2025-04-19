#!/bin/bash


function cd_desktop {

cd /c/users/popad/onedrive/desktop

}


# greet the user
function greet() {
 	 echo 'Hello' $1'!'
}

function cdd () {
cd ..
}

function mknavtwo() {
	mkdir $1
	cd $1
	touch index.html
	

}

function old() {
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	echo 'You made a folder named' $1;
	echo 'With files included';
	#html doc gets a title and body
	echo -e "<html> \n <!DOCTYPE html> \n <head> \n  <title> This should show </title>" >> index.html
	echo -e "<link href="stylesheet.css" rel="stylesheet" type="text/css">" >> index.html
	echo -e "\n	<a href="https://github.com/popados" >[Nik Khandwala [Popados] Github Account] </a>" >> index.html
	echo -e " </head>" >> index.html
	echo -e " <body> " >> index.html
	echo -e " <div> This is text is for $1 </div>" >> index.html
	echo -e "<script src="script.js"> </script>" >> index.html
	echo -e ' </body>' >> index.html	
	echo -e '</html>' >> index.html
	}
	
function mkhtml(){
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	
cat <<- _EOF_ > index.html
	<!DOCTYPE html>

	<html>
	<head>
	
		<meta name="google" content="notranslate">
		<title>$1</title>
		<link href="stylesheet.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	</head>
	
	
	<body>
		<p> Text goes here </p>
		
	<script src="script.js"> </script>
	</body>
	
	</html>

_EOF_
	
	
cat <<- _EOF_ > stylesheet.css



* {
    margin: 0;
    padding: 0;
    list-style-type: none;
    } 
    
    body {
		color: white;
        width: 1440;
        height: 400vh;
        background-color: rgb(67,67,67);
        font-family: sans-serif;
        font-size: 16px;
    }
    
  

_EOF_

cat <<- __EOF__ > script.js


  
__EOF__
	
}	
	
	
	
function mkmd() {
	touch $1.md
	date=%Y
	echo "made markdown file" $1
	echo "open $1.md to edit"
	
cat <<- _EOF_ > $1.md

	<div id="top-of-doc"></div>
	
	# $1 $date |
	
	[My Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	***
	
	***
	
	### DayNum | x/x/20xx - Today
	
	***
	
	[Jump to Top](#top-of-doc)
	
	<div id="end-of-doc"></div>
	
	<details>
	## Notes :
	</details>
	
_EOF_

}

function mkreadme() {
	touch README.md
	echo "made readme"
	
cat <<- _EOF_ > README.md
	
	<!-- markdownlint-disable MD033 -->
	<!-- markdownlint-disable MD041 -->
	<div id="top-of-doc"></div>
	
	# Readme File | $1 | $(date +%B-%d-%Y) |
	
	[My Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	***
	
	## Specifications 
	
	***
	
	### DayNum | x/x/20xx - Today
	
	***
	
	#### End of Document
	
	***
	
	[Jump to Top](#top-of-doc)
	
	<div id="end-of-doc"></div>
	
	<details>
	<summary>
	Notes :
	</summary>
	</details>
	
_EOF_

}


function mkgamemd () {
	mkdir $1
	cd $1
	date=%Y
	touch README.md
	echo "made markdown file" $1
	echo "open $1.md to edit"
	
cat <<- _EOF_ > $1.md

	<div id="top-of-doc"></div>
	
	# $1 Review $date |
	
	[Popados Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	
	## VIDEO GAME REVIEW XX/XX/20XX | ~

	- [Link](#)
	[LAPTOP LINK](#) | [Jump to End](#end-of-doc)

	***
	
	### Steam/About Blurb
	
	***
	
		---{ Graphics }---
		
		☐ You forget what reality is
		☐ Beautiful
		☑ Good
		☐ Decent
		☐ Bad
		☐ Don‘t look too long at it
		☐ MS-DOS

		---{ Gameplay }---

		☑ Very good
		☐ Good
		☐ It's just gameplay
		☐ Mehh
		☐ Watch paint dry instead
		☐ Just don't

		---{ Audio }---

		☐ Eargasm
		☑ Very good
		☐ Good
		☐ Not too bad
		☐ Bad
		☐ I'm now deaf

		---{ Audience }---

		☐ Kids
		☑ Teens
		☑ Adults
		☐ Grandma

		---{ PC Requirements }---

		☐ Check if you can run paint
		☐ Potato
		☑ Decent
		☐ Fast
		☐ Rich boi
		☐ Ask NASA if they have a spare computer

		---{ Difficulty }---

		☐ Just press 'W'
		☐ Easy
		☑ Easy to learn / Hard to master
		☐ Significant brain usage
		☐ Difficult
		☐ Dark Souls

		---{ Grind }---

		☑ Nothing to grind
		☐ Only if u care about leaderboards/ranks
		☐ Isn't necessary to progress
		☐ Average grind level
		☐ Too much grind
		☐ You'll need a second life for grinding

		---{ Story }---

		☐ No Story
		☐ Some lore
		☐ Average
		☑ Good
		☐ Lovely
		☐ It'll replace your life

		---{ Game Time }---

		☐ Long enough for a cup of coffee
		☐ Short
		☐ Average
		☑ Long
		☐ To infinity and beyond

		---{ Price }---

		☐ It's free!
		☑ Worth the price
		☐ If it's on sale
		☐ If u have some spare money left
		☐ Not recommended
		☐ You could also just burn your money

		---{ Bugs }---

		NOTE:REMEMBER THAT THE GAME IS IN EARLY ACCESS DURING THIS REVIEW. THE BUGS IS NOT BAD FOR AN EARLY ACCESS TITLE
		☐ Never heard of
		☑ Minor bugs
		☐ Can get annoying
		☐ ARK: Survival Evolved
		☐ The game itself is a big terrarium for bugs

		---{ ? / 10 }---

		☐ 1
		☐ 2
		☐ 3
		☐ 4
		☐ 5
		☐ 6
		☐ 7
		☐ 8
		☑ 9
		☐ 10

	
	***
	
	***
	
	[Jump to Top](#top-of-doc)
	
	<div id="end-of-doc"></div>
	
_EOF_

}


function mkindex {
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	
	cat <<- _EOF_ > index.html
	<!DOCTYPE html>

	<html>
	<head>
	
		<meta name="google" content="notranslate">
		<title>$1</title>
		<link href="stylesheet.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	</head>
	
	
	<body>
		<p> Text goes here </p>
		
	<script src="script.js"> </script>
	</body>
	
	</html>

_EOF_
	
	
cat <<- _EOF_ > stylesheet.css



* {
    margin: 0;
    padding: 0;
    list-style-type: none;
    } 
    
    body {
		color: white;
        width: 1440;
        height: 400vh;
        background-color: rgb(67,67,67);
        font-family: sans-serif;
        font-size: 16px;
    }
    
  

_EOF_
	
cat <<- __EOF__ > script.js


  
__EOF__
	

}

function mkreview() {
	touch README.md
	echo "made markdown file README.md"
	echo "open README.md to edit"
	
	
cat <<- _EOF_ > README.md

	<div id="top-of-doc"></div>
	
	# $1 Review 2022 |
	
	[Popados Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	
	## VIDEO GAME REVIEW XX/XX/20XX | ~


	[LAPTOP LINK](#) | [Jump to End](#end-of-doc)

	***
	- [Link](#)
	### Steam/About Blurb
	
	***
	
	***
	
	[Jump to Top](#top-of-doc)
	
	<div id="end-of-doc"></div>
	
_EOF_

}


function mkgit {
	mkdir $1
	cd $1
	git init
	mkreadme
	touch .gitignore.txt
}

function whatsecho () {

	echo $1

}

function mknav() {
	mkdir $1
	cd $1
	mkdir img
	touch index.html
	touch stylesheet.css
	touch script.js
	#echo $1 > index.html

cat <<- __EOF__ > index.html

<!DOCTYPE html>

<html>
<head>

<meta name="google" content="notranslate">
<meta charset="UTF-8">
<title> $1 </title>
<link href="stylesheet.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
<header>
    <nav>
        <ul class="menu">
            <li class="icon">          
                <a href="https://www.linkedin.com/in/nikhil-khandwala/" target="”_blank”"> <i class="bi-linkedin"></i> </a>
            </li>
            <li class="icon">
                <a href="https://github.com/popados" > <i class="bi bi-github"></i> </a>
            </li>
            <li class="item"><a href="#">Home</a></li>
            <li class="item"><a href="#about">About</a></li>
            <li onclick="toggleSubmenu()" class="item has-submenu">
                <a href="#services">Services</a>
                <ul class="submenu">
                    <li class="subitem"><a href="#">Design</a></li>
                    <li class="subitem"><a href="#">Development</a></li>
                    <li class="subitem"><a href="#">Copywriting</a></li>
                </ul>
            </li>
            <!-- <li class="item"><a href="#">Blog</a></li> -->
            <li class="item"><a href="#contact">Contact</a></li>
            <li class="toggle"><a><u>+</u><i class="button"></i></a></li>
        </ul>
    </nav>
</header>

<section class="main-body">
<p> Text goes here </p>
<hr id="home">
<section  class="home">
    Home
</section>
<hr id="about">
<section  class="about">
    About
    <div id="services"> </div>
</section>
<hr>
<section  class="services">
    Services
</section>
<hr>
<section id="contact" class="contact">
    Contact
</section>

<script src="script.js"> </script>
</section>
</body>
</html>


	
__EOF__

cat <<- __EOF__ > stylesheet.css
	


* {
margin: 0;
padding: 0;
list-style-type: none;
} 

body {
color: white;
width: 1440;
height: 100%;
background-color: rgb(67,67,67);
font-family: sans-serif;
font-size: 16px;
z-index: 2;
}

a {
color: #ff7f00;
/* text-decoration: none; */
}


header {
    position: fixed;
    width: 100%;
    top: 0;
}

nav {
display: block;
background: #222;
/* overflow: hidden; */



}
/* .main-page {
    margin-top: 50px;
} */


.main-body{
    /* position: absolute; */
    margin-top: 64px;
    z-index: 1;
    /* top: 64px; */
}

.opened-menu{
    margin-top: 384px;
}

.home {
    padding-top: 50px;
    background-color: #8f8f8f;
    height: 512px;
}

.about {
    padding-top: 50px;
    background-color: #5f5f5f;
    height: 512px;
}


.services {
    padding-top: 50px;
    background-color: #5f5f5f;
    height: 512px;
}


.contact {
    padding-top: 50px;
    background-color: #5f5f5f;
    height: 764px;
}



.menu {
display: flex;
flex-direction: row;
border: 1px solid red;
align-items: center;
justify-content: space-between;
z-index: 999;
position: relative;
/* background: #222; */
}

.toggle a {

}

.menu a {
display: block;
border: 1px solid red;
padding: 15px 20px 15px 20px;
}



.menu li a {
display: block;
/* border: 1px solid red; */
padding: 15px 20px 15px 20px;
height: auto;


}

.item {

}

.icon a:hover{
color: #ccc;


}
.item a:hover  {
color: #ccc;
background-color: gray;

}

.icon:nth-child(2) {
margin-right: auto;
}

.icon a:hover {
color: #08bfc5;
background-color: gray;
}

.submenu {
display: none;
}


/* .submenu:hover {
display: block;
} */

.submenu-active {
display: block;
background-color: #111;
/* float: right; */

}

.has-submenu {
display: block;
position: relative;
}

.active {
display: block;

}

.active .item {
    display: block;
    position: relative;
}

.active .submenu-active {
display: inline;
position: relative;

}


.submenu-open {
display: block;
background-color: #111;
position: absolute;
z-index: 1;
/* left: 6rem; */
/* float: right; */
}

.active .submenu-open {
    left:6rem;
}

.subitem {
    display: flex;
    
    /* top: 10%; */
    /* flex-direction:  row; */
}

.subitem a {
    width: 100%;
}

/* .submenu-active:hover .subitem {
display:flex;
background-color: #111;
border-radius: 3px;
} */


/* .has-submenu:hover a {
display: block;
} */

/* .has-submenu:hover .submenu {
    display: block;
    background-color: #111;
    position: absolute;
    z-index: 1;
}  */



@media all and (max-width: 860px) {


    .active .item{
    display: block;
    }

    .menu {
    flex-direction: row;
    }

    .menu-items {

    }

    .submenu-active {
    display: none;

    }

    .submenu-open {
        left: 6rem;
        /* float: right; */
        }

    .icon {

    }

    .item {
    margin-right: auto;
    display: none;

    /* display: flex;
    flex-direction: row; */

    }
}




__EOF__

cat <<- __EOF__ > script.js

	const toggle = document.querySelector(".toggle");
const menu = document.querySelector(".menu");
const submenu = document.querySelector(".submenu")
const items = document.querySelectorAll(".item");
const mainBody = document.querySelector(".main-body")


function toggleMenu() {
    if (menu.classList.contains("active")) {
        menu.classList.remove("active");
        mainBody.classList.remove("opened-menu")
        
        // adds the menu (hamburger) icon
        toggle.querySelector("a").innerHTML = "<i class=’fas bars’>+</i>";
    } else {
        menu.classList.add("active");
        mainBody.classList.add("opened-menu")
        
        // adds the close (x) icon
        toggle.querySelector("a").innerHTML = "<u><i class=’fas bars’>-</i></u>";
    }
}

function toggleItem() {
    if (this.classList.contains(".submenu-active")) {
        this.classList.remove(".submenu-active");
        // this.classList.remove("submenu-open")
    } else if (menu.querySelector(".submenu-active")) {
        menu.querySelector(".submenu-active").classList.remove("submenu-active");
        // this.classList.remove("submenu-open")
        this.classList.add("submenu-active");
    } else {
        this.classList.add("submenu-active");
        // submenu.classList.remove("submenu-open")
    }
}


for (let item of items) {
    if (item.querySelectorAll(".item")) {
      item.addEventListener("click", toggleItem, false);
      item.addEventListener("keypress", toggleItem, false);
    }
       
}

function toggleSubmenu () {
    // menu.querySelector(".submenu").classList.add("submenu-open")


    if (submenu.classList.contains(".submenu")) {
        // this.classList.remove("submenu-open");
        menu.querySelector(".submenu").classList.remove("submenu-open")
        // menu.querySelector(".submenu").classList.add("submenu-open")
    }
    else if (submenu.querySelector("submenu-open")) {
        
        menu.querySelector(".submenu").classList.remove("submenu-open")
        // menu.querySelector(".submenu").classList.add(".submenu-open")
        submenu.classList.add("submenu-open")
    } 
    else  {
        // submenu.classList.remove("submenu-open")
        menu.querySelector(".submenu").classList.add("submenu-open")
        // menu.querySelector(".submenu").classList.remove("submenu-open")
    }
}


function closeDropDown(e) {


}

/* Close Submenu From Anywhere */
function closeSubmenu(e) {

        if (menu.querySelector(".submenu-active")) {
            let isClickInside = menu
                .querySelector(".submenu-active")
                .contains(e.target);
            
        if (!isClickInside && menu.querySelector(".submenu-active")) {
            menu.querySelector(".submenu-active").classList.remove("submenu-active");
            menu.querySelector(".submenu").classList.remove("submenu-open");
        }
    }
}


  function iClick() {
    alert("hello")
  }

toggle.addEventListener("click", toggleMenu, false);
document.addEventListener("click", closeSubmenu, false)

// console.log(toggle)

// console.log(menu)

// console.log(submenu)

// console.log(items)

__EOF__
	
	
}	
	

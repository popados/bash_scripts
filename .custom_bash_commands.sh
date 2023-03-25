#!/bin/bash

# greet the user
function greet() {
 	 echo 'Hello' $1'!'
}

cdd () {
cd ..
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
            <li class="item"><a href="#">About</a></li>
            <li class="item has-submenu">
                <a tabindex="0">Services</a>
                <ul class="submenu">
                    <li class="subitem"><a href="#">Design</a></li>
                    <li class="subitem"><a href="#">Development</a></li>
                    <li class="subitem"><a href="#">Copywriting</a></li>
                </ul>
            </li>
            
            <!-- <li class="item"><a href="#">Blog</a></li> -->
            <li class="item"><a href="#">Contact</a></li>
        </ul>



    </nav>
		</header>
	
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
		/* box-sizing: border-box; */
		} 
		
		body {
			color: white;
			width: 1440;
			height: 400vh;
			background-color: rgb(67,67,67);
			font-family: sans-serif;
			font-size: 16px;
		}
		
		a {
			color: #ff7f00;
			/* text-decoration: none; */
		}

		nav {
			background: #222;
		}
	.menu {
		display: flex;
		border: 1px solid red;
		position: relative;
		align-items: center;
		justify-content: space-between;
		background: #222;
		width: 100%;
	}

	.menu a {
		display: block;
		border: 1px solid red;
		padding: 15px 20px 15px 20px;
	}



	.menu li a {
		display: block;
		
	}

	.item {

	}


	.item a:hover  {
		color: #ccc;
		
	}

	.icon:nth-child(2) {
		margin-right: auto;
	}

	.icon a:hover {
		color: #ccc;
	}

	.submenu {
		display: none;
	}

	@media all and (max-width: 860px) {
		.menu {
			flex-direction: column;
		}

		.menu-items {
			flex-direction: column;
		}
		.icon {
			margin-right: auto;
		}
		.item {
			margin-right: auto;
		}
	}


_EOF_

cat <<- __EOF__ > script.js


  
__EOF__
	
}	
	

	
	
	
	
	
function mkmd() {
	touch $1.md
	echo "made markdown file" $1
	echo "open $1.md to edit"
	
cat <<- _EOF_ > $1.md

	<div id="top-of-doc"></div>
	
	# $1 2023 |
	
	[My Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	***
	
	***
	
	### DayNum | x/x/20xx - Today
	
	***
	
	[Jump to Top](#top-of-doc)
	
	<div id="end-of-doc"></div>
	
	## Notes :
	
_EOF_

}



function mkgamemd () {
	mkdir $1
	cd $1
	touch README.md
	echo "made markdown file" $1
	echo "open $1.md to edit"
	
cat <<- _EOF_ > $1.md

	<div id="top-of-doc"></div>
	
	# $1 Review 2022 |
	
	[Popados Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	
	## VIDEO GAME REVIEW XX/XX/20XX | ~


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
	touch index.html
	#html doc gets a title and body
	echo -e "<html> \n <head> \n 	<title> This should show </title>" >> index.html
	echo -e "<link href="stylesheet.css" rel="stylesheet" type="text/css">" >> index.html
	echo -e " </head>" >> index.html
	echo -e " <body> " >> index.html
	echo -e " <div> This is text </div>" >> index.html
	echo -e "<script src="script.js"> </script>" >> index.html	
	echo -e " </body>" >> index.html
	echo -e "</html>" >> index.html


}

function mkreview() {
	touch README.md
	echo "made markdown file README.md"
	echo "open README.md to edit"
	
	
cat <<- _EOF_ > README.md

	<div id="top-of-doc"></div>
	
	# $1 Review |
	
	[Popados Github](https://github.com/popados) | [Jump to End](#end-of-doc)
	
	
	## VIDEO GAME REVIEW XX/XX/20XX | ~


	[LAPTOP LINK](#) | [Jump to End](#end-of-doc)

	***
	
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




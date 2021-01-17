<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Project 1: Books" FOLDED="false" ID="ID_1383100625" CREATED="1554630097022" MODIFIED="1554630155202" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="Inconsolata" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#3333ff">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000" STYLE="fork">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#990033" STYLE="fork">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" STYLE="fork"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11" STYLE="fork"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="19" RULE="ON_BRANCH_CREATION"/>
<node TEXT="1. Objectives" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_1911674472" CREATED="1554630158216" MODIFIED="1554630278144">
<edge COLOR="#ff0000"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Become more comfortable with Python.
      </li>
      <li>
        Gain experience with Flask.
      </li>
      <li>
        Learn to use SQL to interact with databases.
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="2. Overview" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_1721799998" CREATED="1554630285282" MODIFIED="1554630316857">
<edge COLOR="#0000ff"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In this project, you&#8217;ll build a book review website. Users will be able to register for your website and then log in using their username and password. Once they log in, they will be able to search for books, leave reviews for individual books, and see the reviews made by other people. You&#8217;ll also use the a third-party API by Goodreads, another book review website, to pull in ratings from a broader audience. Finally, users will be able to query for book details and book reviews programmatically via your website&#8217;s API.
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="3. PostgresSQL" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_484314421" CREATED="1554630410844" MODIFIED="1554630528197">
<edge COLOR="#00ff00"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      For this project, you&#8217;ll need to set up a PostgreSQL database to use with our application. It&#8217;s possible to set up PostgreSQL locally on your own computer, but for this project, we&#8217;ll use a database hosted by Heroku, an online web hosting service.
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        Navigate to https://www.heroku.com/, and create an account if you don&#8217;t already have one.
      </li>
      <li>
        On Heroku&#8217;s Dashboard, click &#8220;New&#8221; and choose &#8220;Create new app.&#8221;
      </li>
      <li>
        Give your app a name, and click &#8220;Create app.&#8221;
      </li>
      <li>
        On your app&#8217;s &#8220;Overview&#8221; page, click the &#8220;Configure Add-ons&#8221; button.
      </li>
      <li>
        In the &#8220;Add-ons&#8221; section of the page, type in and select &#8220;Heroku Postgres.&#8221;
      </li>
      <li>
        Choose the &#8220;Hobby Dev - Free&#8221; plan, which will give you access to a free PostgreSQL database that will support up to 10,000 rows of data. Click &#8220;Provision.&#8221;
      </li>
      <li>
        Now, click the &#8220;Heroku Postgres :: Database&#8221; link.
      </li>
      <li>
        You should now be on your database&#8217;s overview page. Click on &#8220;Settings&#8221;, and then &#8220;View Credentials.&#8221; This is the information you&#8217;ll need to log into your database. You can access the database via Adminer, filling in the server (the &#8220;Host&#8221; in the credentials list), your username (the &#8220;User&#8221;), your password, and the name of the database, all of which you can find on the Heroku credentials page.
      </li>
    </ul>
    <p>
      Alternatively, if you install PostgreSQL on your own computer, you should be able to run psql URI on the command line, where the URI is the link provided in the Heroku credentials list.
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="5. Goodreads API" LOCALIZED_STYLE_REF="styles.topic" POSITION="right" ID="ID_631480597" CREATED="1554630800506" MODIFIED="1554631304225">
<edge COLOR="#00ffff"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Goodreads is a popular book review website, and we&#8217;ll be using their API in this project to get access to their review data for individual books.
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Go to https://www.goodreads.com/api and sign up for a Goodreads account if you don&#8217;t already have one.
      </li>
      <li>
        Navigate to https://www.goodreads.com/api/keys and apply for an API key. For &#8220;Application name&#8221; and &#8220;Company name&#8221; feel free to just write &#8220;project1,&#8221; and no need to incluce an application URL, callback URL, or support URL.
      </li>
      <li>
        You should then see your API key. (For this project, we&#8217;ll care only about the &#8220;key&#8221;, not the &#8220;secret&#8221;.)
      </li>
      <li>
        You can now use that API key to make requests to the Goodreads API, documented here. In particular, Python code like the below
      </li>
    </ol>
    <p>
      
    </p>
    <code class="codeblock"><font size="1" face="Liberation Mono">import requests<br size="1" face="Liberation Mono"/>res = requests.get(&quot;https://www.goodreads.com/book/review_counts.json&quot;, params={&quot;key&quot;: &quot;KEY&quot;, &quot;isbns&quot;: &quot;9781632168146&quot;})<br size="1" face="Liberation Mono"/>print(res.json())</font>&#160; </code>

    <p>
      
    </p>
    <p>
      where KEY is your API key, will give you the review and rating data for the book with the provided ISBN number. In particular, you might see something like this dictionary:
    </p>
    <p>
      
    </p>
    <p>
      {'books': [{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'id': 29207858,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'isbn': '1632168146',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'isbn13': '9781632168146',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'ratings_count': 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'reviews_count': 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'text_reviews_count': 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'work_ratings_count': 26,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'work_reviews_count': 113,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'work_text_reviews_count': 10,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'average_rating': '4.04'
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}]
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Note that work_ratings_count here is the number of ratings that this particular book has received, and average_rating is the book&#8217;s average score out of 5.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="4. Python and Flask" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_1675846016" CREATED="1554630602897" MODIFIED="1554630708123">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        First, make sure you install a copy of Python. For this course, you should be using Python version 3.6 or higher.
      </li>
      <li>
        You&#8217;ll also need to install pip. If you downloaded Python from Python&#8217;s website, you likely already have pip installed (you can check by running pip in a terminal window). If you don&#8217;t have it installed, be sure to install it before moving on!
      </li>
    </ol>
    <p>
      To try running your first Flask application:
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Download the project1 distribution directory from https://cdn.cs50.net/web/2018/spring/projects/1/project1.zip and unzip it.
      </li>
      <li>
        In a terminal window, navigate into your project1 directory.
      </li>
      <li>
        Run pip3 install -r requirements.txt in your terminal window to make sure that all of the necessary Python packages (Flask and SQLAlchemy, for instance) are installed.
      </li>
      <li>
        Set the environment variable FLASK_APP to be application.py. On a Mac or on Linux, the command to do this is export FLASK_APP=application.py. On Windows, the command is instead set FLASK_APP=application.py. You may optionally want to set the environment variable FLASK_DEBUG to 1, which will activate Flask&#8217;s debugger and will automatically reload your web application whenever you save a change to a file.
      </li>
      <li>
        Set the environment variable DATABASE_URL to be the URI of your database, which you should be able to see from the credentials page on Heroku.
      </li>
      <li>
        Run flask run to start up your Flask application.
      </li>
      <li>
        If you navigate to the URL provided by flask, you should see the text &quot;Project 1: TODO&quot;!
      </li>
    </ol>
  </body>
</html>

</richcontent>
</node>
<node TEXT="6. Requirements" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="right" ID="ID_237886490" CREATED="1554631351635" MODIFIED="1554631401878">
<edge COLOR="#7c0000"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Alright, it&#8217;s time to actually build your web application! Here are the requirements:
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Registration" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_451752707" CREATED="1554631409308" MODIFIED="1554631457125"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Users should be able to register for your website, providing (at minimum) a username and password.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Login" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_767188856" CREATED="1554631461365" MODIFIED="1554631484345"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Users, once registered, should be able to log in to your website with their username and password.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Logout" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1532385794" CREATED="1554631486582" MODIFIED="1554631516296"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Logged in users should be able to log out of the site.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Import" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1640992652" CREATED="1554631518942" MODIFIED="1554631550327"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Provided for you in this project is a file called books.csv, which is a spreadsheet in CSV format of 5000 different books. Each one has an ISBN number, a title, an author, and a publication year. In a Python file called import.py separate from your web application, write a program that will take the books and import them into your PostgreSQL database. You will first need to decide what table(s) to create, what columns those tables should have, and how they should relate to one another. Run this program by running python3 import.py to import the books into your database, and submit this program with the rest of your project code.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Search" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1961789068" CREATED="1554631588287" MODIFIED="1554631610712"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Once a user has logged in, they should be taken to a page where they can search for a book. Users should be able to type in the ISBN number of a book, the title of a book, or the author of a book. After performing the search, your website should display a list of possible matching results, or some sort of message if there were no matches. If the user typed in only part of a title, ISBN, or author name, your search page should find matches for those as well!
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Book Page" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1044987665" CREATED="1554631662880" MODIFIED="1554631678477"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      When users click on a book from the results of the search page, they should be taken to a book page, with details about the book: its title, author, publication year, ISBN number, and any reviews that users have left for the book on your website.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Review Submission" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1802038593" CREATED="1554631720960" MODIFIED="1554631742609"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      On the book page, users should be able to submit a review: consisting of a rating on a scale of 1 to 5, as well as a text component to the review where the user can write their opinion about a book. Users should not be able to submit multiple reviews for the same book.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Goodreads Review Data" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1157166958" CREATED="1554631776153" MODIFIED="1554631817864"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      On your book page, you should also display (if available) the average rating and number of ratings the work has received from Goodreads.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="API Access" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_700205420" CREATED="1554631788369" MODIFIED="1554631916807"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If users make a GET request to your website&#8217;s /api/&lt;isbn&gt; route, where &lt;isbn&gt; is an ISBN number, your website should return a JSON response containing the book&#8217;s title, author, publication date, ISBN number, review count, and average score. The resulting JSON should follow the format:
    </p>
    <p>
      
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;title&quot;: &quot;Memory&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;author&quot;: &quot;Doug Lloyd&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;year&quot;: 2015,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;isbn&quot;: &quot;1632168146&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;review_count&quot;: 28,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;average_score&quot;: 5.0
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      If the requested ISBN number isn&#8217;t in your database, your website should return a 404 error.
    </p>
    <p>
      
    </p>
    <p>
      You should be using raw SQL commands (as via SQLAlchemy&#8217;s execute method) in order to make database queries. You should not use the SQLAlchemy ORM (if familiar with it) for this project.
    </p>
    <p>
      In README.md, include a short writeup describing your project, what&#8217;s contained in each file, and (optionally) any other additional information the staff should know about your project.
    </p>
    <p>
      If you&#8217;ve added any Python packages that need to be installed in order to run your web application, be sure to add them to requirements.txt!
    </p>
    <p>
      Beyond these requirements, the design, look, and feel of the website are up to you! You&#8217;re also welcome to add additional features to your website, so long as you meet the requirements laid out in the above specification!
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="7. Hints" LOCALIZED_STYLE_REF="styles.topic" POSITION="right" ID="ID_121812969" CREATED="1554631977418" MODIFIED="1554632017041">
<edge COLOR="#00007c"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        At minimum, you&#8217;ll probably want at least one table to keep track of users, one table to keep track of books, and one table to keep track of reviews. But you&#8217;re not limited to just these tables, if you think others would be helpful!
      </li>
      <li>
        In terms of how to &#8220;log a user in,&#8221; recall that you can store information inside of the session, which can store different values for different users. In particular, if each user has an id, then you could store that id in the session (e.g., in session[&quot;user_id&quot;]) to keep track of which user is currently logged in.
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="8. How to Submit" LOCALIZED_STYLE_REF="styles.topic" POSITION="right" ID="ID_1119951178" CREATED="1554632073395" MODIFIED="1554632299360">
<edge COLOR="#007c00"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        Using Git, push your work to https://github.com/submit50/USERNAME.git, where USERNAME is your GitHub username, on a branch called cs50/web/2018/x/projects/1 or, if you&#8217;ve installed submit50, execute<br/>submit50 cs50/web/2018/x/projects/1<br/>instead.
      </li>
      <li>
        Record a 1- to 5-minute screencast in which you demonstrate your app&#8217;s functionality and/or walk viewers through your code. Upload that video to YouTube (as unlisted or public, but not private) or somewhere else.
      </li>
      <li>
        Submit this form.
      </li>
    </ol>
  </body>
</html>

</richcontent>
</node>
</node>
</map>

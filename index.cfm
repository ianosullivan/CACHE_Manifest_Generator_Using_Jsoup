<cfset site = "http://fdiapp.com/herts_web_dev/">

CACHE MANIFEST<br/>
#Time: <cfoutput>#LsDateFormat( now() )# #LSTimeformat( Now() )#<br/><br/></cfoutput>

CACHE:<br />
<!---
	// Create our JSoup class. The class mostly has static methods
	// for parsing so we don't need to initialize it.
--->
<cfset jSoupClass = createObject("java", "org.jsoup.Jsoup")>

<!---
	// Create a connection and execute a GET HTTP request on the connection
 --->
<cfset dom = jSoupClass.connect( site ).get()>

<!--- 	//Get all images from the DOM --->
<cfset imgs = dom.select( "img" )>

<!--- 	// Loop over the images to get their source --->
<cfloop array="#imgs#" index="img">
	<cfoutput>
		#img.attr( "src" )# <br/>
	</cfoutput>
</cfloop>


<!--- Now get all scripts from the page --->
<cfset scripts = dom.select( "script" )>

<!--- 	// Loop over the images to get their source --->
<cfloop array="#scripts#" index="script">
	<cfoutput>
		#script.attr( "src" )# <br/>
	</cfoutput>
</cfloop>


<!--- Now get all the css from the page --->
<cfset links = dom.select( "link" )>

<!--- 	// Loop over the images to get their source --->
<cfloop array="#links#" index="link">
	<cfoutput>
		#link.attr( "href" )# <br/>
	</cfoutput>
</cfloop>

<br />
NETWORK:<br />
*<br /><br />

#FALLBACK:<br />
#/ offline.html<br />
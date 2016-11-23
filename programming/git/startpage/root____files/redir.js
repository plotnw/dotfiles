/*
* Redirects to given site
* Author : Vereis~
*/

function redir(input, args)
{
	if (input == "4chan" && args == "empty") {var http = "https://www." + input + ".org";}
	else if (input == "gmail") {var http = "https://www.gmail.com";}	
	else if (input =="4chan") {var http = "https://www." + input + ".org/" + args;}
	else if (input =="github") {var http = "https://www.github.com";}	
	else if (input == "drive") { var http = "https://www." + input + ".google.com";}
	else if (input == "reddit" && args == "empty") {var http = "https://www." + input + ".com";}
	else if  (input == "reddit" && args == "pcmr") {var http = "https://www." + input + ".com/r/pcmasterrace";}
	else if  (input == "reddit") {var http = "https://www." + input + ".com/r/" + args;}
	else if (input != "site" && input !="preferences" && input !="discord") { var http = "https://www." + input + ".com"; }
	else if (input == "site") { var http = "https://www." + args[0];
								if (args.length > 1) { http += "." + args[1] }}
	else { var http = "http://www." + input + ".gg";}
	window.location = http;
}

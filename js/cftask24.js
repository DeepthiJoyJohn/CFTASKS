var oXmlHttp

function checkemail(emailobj)
{
var email=emailobj.value;
var url="../Components/cftask24component.cfc?method=dfg";
oXmlHttp=GetHttpObject(stateChanged)
oXmlHttp.open("GET", url , true)
alert('ds');
oXmlHttp.send(null)
}

function stateChanged()
{
alert("s");
if (oXmlHttp.readyState==4 || oXmlHttp.readyState=="complete")
{
alert(oXmlHttp.responseText);
//document.getElementById("regionList").innerHTML=oXmlHttp.responseText
}
}

function GetHttpObject(handler)
{
try
{
var oRequester = new XMLHttpRequest();
	oRequester.onload=handlers
	oRequester.onerror=handler
	return oRequester
}
catch (error)
{
try
{
var oRequester = new ActiveXObject("Microsoft.XMLHTTP");
oRequester.onreadystatechange=handler
return oRequester
}
catch (error)
{
return false;
}
}
}
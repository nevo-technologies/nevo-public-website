//
// Feedback Page Java Scripts
//

function validateInput(frm)  {

		var gotError = 0;
		var sEmailStr = frm.userEmail.value;

		if ( frm.userName.value == "" ) { gotError = 1; }
		if ( frm.userEmail.value == "" ) { gotError = 1; }
		if ( frm.userCompany.value == "" ) { gotError = 1; }
		if ( frm.userMessage.value == "" ) { gotError = 1; }

		if ( gotError == 0 ) {
		    return emailCheck(sEmailStr.toLowerCase());
		}
		else {
		    alert("Please enter all fields.");
		    return false;
		}

}

function validateJustEmailInput(frm)  {

		var gotError = 0;
		var sEmailStr = frm.userEmail.value;

		if ( frm.userEmail.value == "" ) { gotError = 1; }

		if ( gotError == 0 ) {
		    return emailCheck(sEmailStr.toLowerCase());
		}
		else {
		    alert("Please enter your email address.");
		    return false;
		}

}

function emailCheck (emailStr) {
		  var checkTLD=1;
		  var knownDomsPat=/^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/;
		  var emailPat=/^(.+)@(.+)$/;
		  var specialChars="\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
		  var validChars="\[^\\s" + specialChars + "\]";
		  var quotedUser="(\"[^\"]*\")";
		  var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
		  var atom=validChars + '+';
		  var word="(" + atom + "|" + quotedUser + ")";
		  var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
		  var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");
		  var matchArray=emailStr.match(emailPat);

		  if (matchArray==null) {
		  		alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		  		return false;
		  		}

		  var user=matchArray[1];
		  var domain=matchArray[2];

		  for (i=0; i<user.length; i++) {
		    if (user.charCodeAt(i)>127) {
		    	alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		    	return false;
		    	}
		  }

		  for (i=0; i<domain.length; i++) {
		    if (domain.charCodeAt(i)>127) {
		    	alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		    	return false;
		    	}
		  }

		  if (user.match(userPat)==null) {
		  		alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		  		return false;
		  		}

		  var IPArray=domain.match(ipDomainPat);
		  if (IPArray!=null) {
		    for (var i=1;i<=4;i++) {
		      if (IPArray[i]>255) {
		      	alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		      	return false;
		      	}
		    }
		    return true;
		  }

		  var atomPat=new RegExp("^" + atom + "$");
		  var domArr=domain.split(".");
		  var len=domArr.length;
		  for (i=0;i<len;i++) {
		    if (domArr[i].search(atomPat)==-1) {
		    	alert('You must provide a valid email address.');
		  		window.document.formName.userEmail.focus()
		    	return false;
		    }
		  }

		  if (checkTLD && domArr[domArr.length-1].length!=2 &&
		      domArr[domArr.length-1].search(knownDomsPat)==-1) {
		      alert('You must provide a valid email address.');
	  		  window.document.formName.userEmail.focus()
		      return false;
		  }

		  if (len<2) {
		     alert('You must provide a valid email address.');
		  	 window.document.formName.userEmail.focus()
		     return false;
		  }

		  return true;
		}


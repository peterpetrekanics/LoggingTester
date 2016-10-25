<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>Logging Tester</b> portlet in View mode.
<br>
<br>

<portlet:defineObjects />
	<portlet:resourceURL var="resourceUrl1">
	<portlet:param name="portletAction" value="debug"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource1()">Click to display a debug level message</a>
	<script type="text/javascript">
	function callServeResource1(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl1}');	 
		});
	}
	</script>
	
	<br>-------------------------------<br>
	
	<portlet:resourceURL var="resourceUrl2">
	<portlet:param name="portletAction" value="warn"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource2()">Click to display a warn level message</a>
	<script type="text/javascript">
	function callServeResource2(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl2}');	 
		});
	}
	</script>
	
	<br>-------------------------------<br>
	
	<portlet:resourceURL var="resourceUrl3">
	<portlet:param name="portletAction" value="info"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource3()">Click to display an info level message</a>
	<script type="text/javascript">
	function callServeResource3(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl3}');	 
		});
	}
	</script>
	
	<br>-------------------------------<br>
	
	<portlet:resourceURL var="resourceUrl4">
	<portlet:param name="portletAction" value="fatal"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource4()">Click to display a fatal level message</a>
	<script type="text/javascript">
	function callServeResource4(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl4}');	 
		});
	}
	</script>
	
	<br>-------------------------------<br>
	
	<portlet:resourceURL var="resourceUrl5">
	<portlet:param name="portletAction" value="error"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource5()">Click to display an error level message</a>
	<script type="text/javascript">
	function callServeResource5(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl5}');	 
		});
	}
	</script>
	
	<br>-------------------------------<br>
	
	<portlet:resourceURL var="resourceUrl6">
	<portlet:param name="portletAction" value="trace"/> 
	</portlet:resourceURL>
	
	<a href="#" onclick="callServeResource6()">Click to display a trace level message</a>
	<script type="text/javascript">
	function callServeResource6(){
		AUI().use('aui-io-request', function(A){
			A.io.request('${resourceUrl6}');	 
		});
	}
	</script>
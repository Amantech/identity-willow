<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//www.gstatic.com/authtoolkit/js/gitkit.js"></script>
<link type="text/css" rel="stylesheet" href="//www.gstatic.com/authtoolkit/css/gitkit.css" />
<script type="text/javascript">
function load() {
  var config = {
  "widgetUrl": window.location.origin + "/gitkit",
  "signInSuccessUrl": "/",
  "signOutUrl": "/",
  "oobActionUrl": "/",
  "apiKey": "AIzaSyBw4Cl3oJ9kAZ6CfJH7HyXJfGGri0qgd7w",
  "siteName": "identity-willow",
  "signInOptions": ["password","google"]
};

  // The HTTP POST body should be escaped by the server to prevent XSS
  window.google.identitytoolkit.start(
      '#gitkitWidgetDiv', // accepts any CSS selector
      config);
}
</script>
<script type="text/javascript" src="//apis.google.com/js/client.js?onload=load"></script>
</head>
<body>
<code id="gitkitWidgetDiv">Loading...</code>
</body>
</html>
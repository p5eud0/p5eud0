<%
String s= request.getParameter("md5");
if(null!=s && s.equals("__pseudocat__")==false){
    out.println("everything is p5eud0");
}
%>
<%if(null!=s && s.equals("__pseudocat__")) {%>
    <jsp:forward page ='/WEB-INF/flag.php' />
<%} %>
<?php
if (isset($_GET['md5'])){
    $md5=md5($_GET['md5']);
    if (md5($md5)==$md5)
        echo "Ghumbulious! Flag is ".require __DIR__."/flag.php";
    else
        echo "everything is p5eud0";
}
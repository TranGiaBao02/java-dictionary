<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleDicProxyid" scope="session" class="DefaultNamespace.DicProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleDicProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleDicProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleDicProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        DefaultNamespace.Dic getDic10mtemp = sampleDicProxyid.getDic();
if(getDic10mtemp == null){
%>
<%=getDic10mtemp %>
<%
}else{
        if(getDic10mtemp!= null){
        String tempreturnp11 = getDic10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String word_1id=  request.getParameter("word16");
            java.lang.String word_1idTemp = null;
        if(!word_1id.equals("")){
         word_1idTemp  = word_1id;
        }
        String newMeaning_2id=  request.getParameter("newMeaning18");
            java.lang.String newMeaning_2idTemp = null;
        if(!newMeaning_2id.equals("")){
         newMeaning_2idTemp  = newMeaning_2id;
        }
        java.lang.String editWord13mtemp = sampleDicProxyid.editWord(word_1idTemp,newMeaning_2idTemp);
if(editWord13mtemp == null){
%>
<%=editWord13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editWord13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 20:
        gotMethod = true;
        String word_3id=  request.getParameter("word23");
            java.lang.String word_3idTemp = null;
        if(!word_3id.equals("")){
         word_3idTemp  = word_3id;
        }
        java.lang.String deleteWord20mtemp = sampleDicProxyid.deleteWord(word_3idTemp);
if(deleteWord20mtemp == null){
%>
<%=deleteWord20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteWord20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
case 25:
        gotMethod = true;
        String word_4id=  request.getParameter("word28");
            java.lang.String word_4idTemp = null;
        if(!word_4id.equals("")){
         word_4idTemp  = word_4id;
        }
        String meaning_5id=  request.getParameter("meaning30");
            java.lang.String meaning_5idTemp = null;
        if(!meaning_5id.equals("")){
         meaning_5idTemp  = meaning_5id;
        }
        java.lang.String addWord25mtemp = sampleDicProxyid.addWord(word_4idTemp,meaning_5idTemp);
if(addWord25mtemp == null){
%>
<%=addWord25mtemp %>
<%
}else{
        String tempResultreturnp26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addWord25mtemp));
        %>
        <%= tempResultreturnp26 %>
        <%
}
break;
case 32:
        gotMethod = true;
        String word_6id=  request.getParameter("word35");
            java.lang.String word_6idTemp = null;
        if(!word_6id.equals("")){
         word_6idTemp  = word_6id;
        }
        java.lang.String lookup32mtemp = sampleDicProxyid.lookup(word_6idTemp);
if(lookup32mtemp == null){
%>
<%=lookup32mtemp %>
<%
}else{
        String tempResultreturnp33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(lookup32mtemp));
        %>
        <%= tempResultreturnp33 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>
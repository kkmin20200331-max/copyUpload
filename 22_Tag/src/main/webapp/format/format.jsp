<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>format jsp 영역 ~~</h1>
${a}
<hr>
<fmt:formatNumber value="${a}"/>
<hr>
<fmt:formatNumber value="${a}" type="currency" currencySymbol="$"/>
<hr>
<fmt:formatNumber value="${b}"/>
<hr>
<fmt:formatNumber value="${b}" type="percent"/>
<hr>
<fmt:formatNumber value="${b}" pattern="0.00000"/>
<hr>
<fmt:formatNumber value="${b}" pattern="#.#####"/>
<hr>
<fmt:formatNumber value="${b}" pattern="0,00.000"/>
<hr>
<fmt:formatNumber value="${b}" pattern="#,##.###"/>
<hr>
<fmt:formatNumber value="${c}" pattern="#,##.###"/>
<hr>
${d}
<hr>
<fmt:formatDate value="${d}"/>
<hr>
<fmt:formatDate value="${d}" type="date" dateStyle="short"/>
<hr>
<fmt:formatDate value="${d}" type="date" dateStyle="long"/>
<hr>
<fmt:formatDate value="${d}" type="time" timeStyle="short"/>
<hr>
<fmt:formatDate value="${d}" type="time" timeStyle="long"/>
<hr>
<fmt:formatDate value="${d}" type="both" dateStyle="short" timeStyle="long"/>
<hr>
<fmt:formatDate value="${d}" type="both" dateStyle="long" timeStyle="short"/>
<hr>
<fmt:formatDate value="${d}" pattern="yyyy-MM-dd / hh:mm"/>

<hr>
<div class="snacks">
    <c:forEach items="${snacks}" var="snack" varStatus="st">
        <div class="snack-item" style="display: flex; gap:20px">

            <div> ${st.count}</div>
            <div>${snack.name}</div>
            <div><fmt:formatNumber value="${snack.price}"  pattern="₩0,000.00" /></div>
            <div><fmt:formatDate value="${snack.date}" type="date" pattern="yyyy-MM-dd"/></div>
        </div>
    </c:forEach>
</div>
</body>
</html>

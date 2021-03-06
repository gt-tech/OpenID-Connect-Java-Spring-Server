<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="o" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<spring:message code="error.title" var="title"/>
<o:header title="${title}" />
<o:topbar pageName="Error" />
<div class="container-fluid main">
	<div class="row-fluid">
		<div class="offset1 span10">
			<div class="hero-unit">
				<h1><span><spring:message code="error.header"/></span>
					<span class="text-error"><c:out value="${error.getOAuth2ErrorCode()}" /></span>
				</h1>
				<p>
					<spring:message code="error.message"/>
					<blockquote class="text-error"><b><c:out value="${error.message}" /></b></blockquote>
                </p>
				
			</div>

		</div>
	</div>
</div>
<o:footer />


<%@ page import="gtugio.domain.ChromeExtensionProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chromeExtensionProject.label', default: 'ChromeExtensionProject')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'chromeExtensionProject.id.label', default: 'Id')}" />
                        
                            <th><g:message code="chromeExtensionProject.user.label" default="User" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'chromeExtensionProject.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'chromeExtensionProject.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="detailedDescription" title="${message(code: 'chromeExtensionProject.detailedDescription.label', default: 'Detailed Description')}" />
                        
                            <g:sortableColumn property="icon" title="${message(code: 'chromeExtensionProject.icon.label', default: 'Icon')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${chromeExtensionProjectInstanceList}" status="i" var="chromeExtensionProjectInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${chromeExtensionProjectInstance.id}">${fieldValue(bean: chromeExtensionProjectInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: chromeExtensionProjectInstance, field: "user")}</td>
                        
                            <td>${fieldValue(bean: chromeExtensionProjectInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: chromeExtensionProjectInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: chromeExtensionProjectInstance, field: "detailedDescription")}</td>
                        
                            <td>${fieldValue(bean: chromeExtensionProjectInstance, field: "icon")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${chromeExtensionProjectInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

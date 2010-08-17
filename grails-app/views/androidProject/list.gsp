
<%@ page import="gtugio.domain.AndroidProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'androidProject.label', default: 'AndroidProject')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'androidProject.id.label', default: 'Id')}" />
                        
                            <th><g:message code="androidProject.user.label" default="User" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'androidProject.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'androidProject.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="detailedDescription" title="${message(code: 'androidProject.detailedDescription.label', default: 'Detailed Description')}" />
                        
                            <g:sortableColumn property="icon" title="${message(code: 'androidProject.icon.label', default: 'Icon')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${androidProjectInstanceList}" status="i" var="androidProjectInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${androidProjectInstance.id}">${fieldValue(bean: androidProjectInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: androidProjectInstance, field: "user")}</td>
                        
                            <td>${fieldValue(bean: androidProjectInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: androidProjectInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: androidProjectInstance, field: "detailedDescription")}</td>
                        
                            <td>${fieldValue(bean: androidProjectInstance, field: "icon")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${androidProjectInstanceTotal}" />
            </div>
        </div>
    </body>
</html>

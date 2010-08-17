
<%@ page import="gtugio.domain.ChromeAppProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chromeAppProject.label', default: 'ChromeAppProject')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${chromeAppProjectInstance?.user?.id}">${chromeAppProjectInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.detailedDescription.label" default="Detailed Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "detailedDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.icon.label" default="Icon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "icon")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.appversion.label" default="Appversion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "appversion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.website.label" default="Website" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "website")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.support.label" default="Support" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "support")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.kind.label" default="Kind" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "kind")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.repository.label" default="Repository" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "repository")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.approvedBy.label" default="Approved By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "approvedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.approveDate.label" default="Approve Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeAppProjectInstance?.approveDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.declinedBy.label" default="Declined By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "declinedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.declineDate.label" default="Decline Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "declineDate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.declineReason.label" default="Decline Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "declineReason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.published.label" default="Published" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeAppProjectInstance?.published}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.updated.label" default="Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeAppProjectInstance?.updated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeAppProject.appMarketPlaceURL.label" default="App Market Place URL" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeAppProjectInstance, field: "appMarketPlaceURL")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${chromeAppProjectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>


<%@ page import="gtugio.domain.AppEngineProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'appEngineProject.label', default: 'AppEngineProject')}" />
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
                            <td valign="top" class="name"><g:message code="appEngineProject.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${appEngineProjectInstance?.user?.id}">${appEngineProjectInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.detailedDescription.label" default="Detailed Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "detailedDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.icon.label" default="Icon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "icon")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.appversion.label" default="Appversion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "appversion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.website.label" default="Website" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "website")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.support.label" default="Support" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "support")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.kind.label" default="Kind" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "kind")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.repository.label" default="Repository" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "repository")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.approvedBy.label" default="Approved By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "approvedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.approveDate.label" default="Approve Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${appEngineProjectInstance?.approveDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.declinedBy.label" default="Declined By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "declinedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.declineDate.label" default="Decline Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "declineDate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.declineReason.label" default="Decline Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "declineReason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.published.label" default="Published" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${appEngineProjectInstance?.published}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.updated.label" default="Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${appEngineProjectInstance?.updated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="appEngineProject.applicationUrl.label" default="Application Url" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: appEngineProjectInstance, field: "applicationUrl")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${appEngineProjectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

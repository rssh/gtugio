
<%@ page import="gtugio.domain.Project" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
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
                            <td valign="top" class="name"><g:message code="project.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${projectInstance?.user?.id}">${projectInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.detailedDescription.label" default="Detailed Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "detailedDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.icon.label" default="Icon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "icon")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.appversion.label" default="Appversion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "appversion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.website.label" default="Website" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "website")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.support.label" default="Support" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "support")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.kind.label" default="Kind" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "kind")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.repository.label" default="Repository" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "repository")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.approvedBy.label" default="Approved By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "approvedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.approveDate.label" default="Approve Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${projectInstance?.approveDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.declinedBy.label" default="Declined By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "declinedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.declineDate.label" default="Decline Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "declineDate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.declineReason.label" default="Decline Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: projectInstance, field: "declineReason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.published.label" default="Published" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${projectInstance?.published}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="project.updated.label" default="Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${projectInstance?.updated}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${projectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

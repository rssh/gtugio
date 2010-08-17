
<%@ page import="gtugio.domain.ChromeExtensionProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chromeExtensionProject.label', default: 'ChromeExtensionProject')}" />
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
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${chromeExtensionProjectInstance?.user?.id}">${chromeExtensionProjectInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.detailedDescription.label" default="Detailed Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "detailedDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.icon.label" default="Icon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "icon")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.appversion.label" default="Appversion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "appversion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.website.label" default="Website" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "website")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.support.label" default="Support" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "support")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.kind.label" default="Kind" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "kind")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.repository.label" default="Repository" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "repository")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.approvedBy.label" default="Approved By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "approvedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.approveDate.label" default="Approve Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeExtensionProjectInstance?.approveDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.declinedBy.label" default="Declined By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "declinedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.declineDate.label" default="Decline Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "declineDate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.declineReason.label" default="Decline Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "declineReason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.published.label" default="Published" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeExtensionProjectInstance?.published}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.updated.label" default="Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${chromeExtensionProjectInstance?.updated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="chromeExtensionProject.extensionURL.label" default="Extension URL" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: chromeExtensionProjectInstance, field: "extensionURL")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${chromeExtensionProjectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

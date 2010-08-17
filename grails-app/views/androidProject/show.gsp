
<%@ page import="gtugio.domain.AndroidProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'androidProject.label', default: 'AndroidProject')}" />
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
                            <td valign="top" class="name"><g:message code="androidProject.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${androidProjectInstance?.user?.id}">${androidProjectInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.detailedDescription.label" default="Detailed Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "detailedDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.icon.label" default="Icon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "icon")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.appversion.label" default="Appversion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "appversion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.website.label" default="Website" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "website")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.support.label" default="Support" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "support")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.kind.label" default="Kind" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "kind")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.repository.label" default="Repository" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "repository")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.approvedBy.label" default="Approved By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "approvedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.approveDate.label" default="Approve Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${androidProjectInstance?.approveDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.declinedBy.label" default="Declined By" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "declinedBy")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.declineDate.label" default="Decline Date" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "declineDate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.declineReason.label" default="Decline Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "declineReason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.published.label" default="Published" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${androidProjectInstance?.published}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.updated.label" default="Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${androidProjectInstance?.updated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.qrcode.label" default="Qrcode" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "qrcode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="androidProject.marketUrl.label" default="Market Url" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: androidProjectInstance, field: "marketUrl")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${androidProjectInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

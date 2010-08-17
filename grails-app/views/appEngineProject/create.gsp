

<%@ page import="gtugio.domain.AppEngineProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'appEngineProject.label', default: 'AppEngineProject')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${appEngineProjectInstance}">
            <div class="errors">
                <g:renderErrors bean="${appEngineProjectInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="appEngineProject.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${gtugio.domain.User.list()}" optionKey="id" value="${appEngineProjectInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="appEngineProject.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${appEngineProjectInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="appEngineProject.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="128" value="${appEngineProjectInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="detailedDescription"><g:message code="appEngineProject.detailedDescription.label" default="Detailed Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'detailedDescription', 'errors')}">
                                    <g:textArea name="detailedDescription" cols="40" rows="5" value="${appEngineProjectInstance?.detailedDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="icon"><g:message code="appEngineProject.icon.label" default="Icon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'icon', 'errors')}">
                                    <g:textField name="icon" value="${appEngineProjectInstance?.icon}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appversion"><g:message code="appEngineProject.appversion.label" default="Appversion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'appversion', 'errors')}">
                                    <g:textField name="appversion" maxlength="16" value="${appEngineProjectInstance?.appversion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="appEngineProject.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${appEngineProjectInstance?.website}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="support"><g:message code="appEngineProject.support.label" default="Support" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'support', 'errors')}">
                                    <g:textField name="support" value="${appEngineProjectInstance?.support}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="kind"><g:message code="appEngineProject.kind.label" default="Kind" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'kind', 'errors')}">
                                    <g:select name="kind" from="${appEngineProjectInstance.constraints.kind.inList}" value="${appEngineProjectInstance?.kind}" valueMessagePrefix="appEngineProject.kind"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="repository"><g:message code="appEngineProject.repository.label" default="Repository" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'repository', 'errors')}">
                                    <g:textField name="repository" value="${appEngineProjectInstance?.repository}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="appEngineProject.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${appEngineProjectInstance.constraints.status.inList}" value="${appEngineProjectInstance?.status}" valueMessagePrefix="appEngineProject.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approvedBy"><g:message code="appEngineProject.approvedBy.label" default="Approved By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'approvedBy', 'errors')}">
                                    <g:textField name="approvedBy" value="${appEngineProjectInstance?.approvedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approveDate"><g:message code="appEngineProject.approveDate.label" default="Approve Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'approveDate', 'errors')}">
                                    <g:datePicker name="approveDate" precision="day" value="${appEngineProjectInstance?.approveDate}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declinedBy"><g:message code="appEngineProject.declinedBy.label" default="Declined By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'declinedBy', 'errors')}">
                                    <g:textField name="declinedBy" value="${appEngineProjectInstance?.declinedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineDate"><g:message code="appEngineProject.declineDate.label" default="Decline Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'declineDate', 'errors')}">
                                    <g:textField name="declineDate" value="${appEngineProjectInstance?.declineDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineReason"><g:message code="appEngineProject.declineReason.label" default="Decline Reason" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'declineReason', 'errors')}">
                                    <g:textField name="declineReason" value="${appEngineProjectInstance?.declineReason}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="published"><g:message code="appEngineProject.published.label" default="Published" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'published', 'errors')}">
                                    <g:datePicker name="published" precision="day" value="${appEngineProjectInstance?.published}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updated"><g:message code="appEngineProject.updated.label" default="Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'updated', 'errors')}">
                                    <g:datePicker name="updated" precision="day" value="${appEngineProjectInstance?.updated}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="applicationUrl"><g:message code="appEngineProject.applicationUrl.label" default="Application Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: appEngineProjectInstance, field: 'applicationUrl', 'errors')}">
                                    <g:textField name="applicationUrl" value="${appEngineProjectInstance?.applicationUrl}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>

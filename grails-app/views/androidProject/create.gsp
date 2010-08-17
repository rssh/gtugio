

<%@ page import="gtugio.domain.AndroidProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'androidProject.label', default: 'AndroidProject')}" />
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
            <g:hasErrors bean="${androidProjectInstance}">
            <div class="errors">
                <g:renderErrors bean="${androidProjectInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="androidProject.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${gtugio.domain.User.list()}" optionKey="id" value="${androidProjectInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="androidProject.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${androidProjectInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="androidProject.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="128" value="${androidProjectInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="detailedDescription"><g:message code="androidProject.detailedDescription.label" default="Detailed Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'detailedDescription', 'errors')}">
                                    <g:textArea name="detailedDescription" cols="40" rows="5" value="${androidProjectInstance?.detailedDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="icon"><g:message code="androidProject.icon.label" default="Icon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'icon', 'errors')}">
                                    <g:textField name="icon" value="${androidProjectInstance?.icon}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appversion"><g:message code="androidProject.appversion.label" default="Appversion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'appversion', 'errors')}">
                                    <g:textField name="appversion" maxlength="16" value="${androidProjectInstance?.appversion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="androidProject.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${androidProjectInstance?.website}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="support"><g:message code="androidProject.support.label" default="Support" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'support', 'errors')}">
                                    <g:textField name="support" value="${androidProjectInstance?.support}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="kind"><g:message code="androidProject.kind.label" default="Kind" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'kind', 'errors')}">
                                    <g:select name="kind" from="${androidProjectInstance.constraints.kind.inList}" value="${androidProjectInstance?.kind}" valueMessagePrefix="androidProject.kind"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="repository"><g:message code="androidProject.repository.label" default="Repository" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'repository', 'errors')}">
                                    <g:textField name="repository" value="${androidProjectInstance?.repository}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="androidProject.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${androidProjectInstance.constraints.status.inList}" value="${androidProjectInstance?.status}" valueMessagePrefix="androidProject.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approvedBy"><g:message code="androidProject.approvedBy.label" default="Approved By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'approvedBy', 'errors')}">
                                    <g:textField name="approvedBy" value="${androidProjectInstance?.approvedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approveDate"><g:message code="androidProject.approveDate.label" default="Approve Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'approveDate', 'errors')}">
                                    <g:datePicker name="approveDate" precision="day" value="${androidProjectInstance?.approveDate}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declinedBy"><g:message code="androidProject.declinedBy.label" default="Declined By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'declinedBy', 'errors')}">
                                    <g:textField name="declinedBy" value="${androidProjectInstance?.declinedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineDate"><g:message code="androidProject.declineDate.label" default="Decline Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'declineDate', 'errors')}">
                                    <g:textField name="declineDate" value="${androidProjectInstance?.declineDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineReason"><g:message code="androidProject.declineReason.label" default="Decline Reason" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'declineReason', 'errors')}">
                                    <g:textField name="declineReason" value="${androidProjectInstance?.declineReason}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="published"><g:message code="androidProject.published.label" default="Published" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'published', 'errors')}">
                                    <g:datePicker name="published" precision="day" value="${androidProjectInstance?.published}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updated"><g:message code="androidProject.updated.label" default="Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'updated', 'errors')}">
                                    <g:datePicker name="updated" precision="day" value="${androidProjectInstance?.updated}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qrcode"><g:message code="androidProject.qrcode.label" default="Qrcode" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'qrcode', 'errors')}">
                                    <g:textField name="qrcode" value="${androidProjectInstance?.qrcode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="marketUrl"><g:message code="androidProject.marketUrl.label" default="Market Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: androidProjectInstance, field: 'marketUrl', 'errors')}">
                                    <g:textField name="marketUrl" value="${androidProjectInstance?.marketUrl}" />
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

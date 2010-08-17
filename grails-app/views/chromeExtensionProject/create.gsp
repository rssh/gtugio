

<%@ page import="gtugio.domain.ChromeExtensionProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chromeExtensionProject.label', default: 'ChromeExtensionProject')}" />
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
            <g:hasErrors bean="${chromeExtensionProjectInstance}">
            <div class="errors">
                <g:renderErrors bean="${chromeExtensionProjectInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="chromeExtensionProject.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${gtugio.domain.User.list()}" optionKey="id" value="${chromeExtensionProjectInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="chromeExtensionProject.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${chromeExtensionProjectInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="chromeExtensionProject.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="128" value="${chromeExtensionProjectInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="detailedDescription"><g:message code="chromeExtensionProject.detailedDescription.label" default="Detailed Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'detailedDescription', 'errors')}">
                                    <g:textArea name="detailedDescription" cols="40" rows="5" value="${chromeExtensionProjectInstance?.detailedDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="icon"><g:message code="chromeExtensionProject.icon.label" default="Icon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'icon', 'errors')}">
                                    <g:textField name="icon" value="${chromeExtensionProjectInstance?.icon}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appversion"><g:message code="chromeExtensionProject.appversion.label" default="Appversion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'appversion', 'errors')}">
                                    <g:textField name="appversion" maxlength="16" value="${chromeExtensionProjectInstance?.appversion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="chromeExtensionProject.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${chromeExtensionProjectInstance?.website}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="support"><g:message code="chromeExtensionProject.support.label" default="Support" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'support', 'errors')}">
                                    <g:textField name="support" value="${chromeExtensionProjectInstance?.support}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="kind"><g:message code="chromeExtensionProject.kind.label" default="Kind" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'kind', 'errors')}">
                                    <g:select name="kind" from="${chromeExtensionProjectInstance.constraints.kind.inList}" value="${chromeExtensionProjectInstance?.kind}" valueMessagePrefix="chromeExtensionProject.kind"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="repository"><g:message code="chromeExtensionProject.repository.label" default="Repository" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'repository', 'errors')}">
                                    <g:textField name="repository" value="${chromeExtensionProjectInstance?.repository}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="chromeExtensionProject.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${chromeExtensionProjectInstance.constraints.status.inList}" value="${chromeExtensionProjectInstance?.status}" valueMessagePrefix="chromeExtensionProject.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approvedBy"><g:message code="chromeExtensionProject.approvedBy.label" default="Approved By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'approvedBy', 'errors')}">
                                    <g:textField name="approvedBy" value="${chromeExtensionProjectInstance?.approvedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approveDate"><g:message code="chromeExtensionProject.approveDate.label" default="Approve Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'approveDate', 'errors')}">
                                    <g:datePicker name="approveDate" precision="day" value="${chromeExtensionProjectInstance?.approveDate}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declinedBy"><g:message code="chromeExtensionProject.declinedBy.label" default="Declined By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'declinedBy', 'errors')}">
                                    <g:textField name="declinedBy" value="${chromeExtensionProjectInstance?.declinedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineDate"><g:message code="chromeExtensionProject.declineDate.label" default="Decline Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'declineDate', 'errors')}">
                                    <g:textField name="declineDate" value="${chromeExtensionProjectInstance?.declineDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineReason"><g:message code="chromeExtensionProject.declineReason.label" default="Decline Reason" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'declineReason', 'errors')}">
                                    <g:textField name="declineReason" value="${chromeExtensionProjectInstance?.declineReason}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="published"><g:message code="chromeExtensionProject.published.label" default="Published" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'published', 'errors')}">
                                    <g:datePicker name="published" precision="day" value="${chromeExtensionProjectInstance?.published}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updated"><g:message code="chromeExtensionProject.updated.label" default="Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'updated', 'errors')}">
                                    <g:datePicker name="updated" precision="day" value="${chromeExtensionProjectInstance?.updated}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="extensionURL"><g:message code="chromeExtensionProject.extensionURL.label" default="Extension URL" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeExtensionProjectInstance, field: 'extensionURL', 'errors')}">
                                    <g:textField name="extensionURL" value="${chromeExtensionProjectInstance?.extensionURL}" />
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

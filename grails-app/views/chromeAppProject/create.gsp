

<%@ page import="gtugio.domain.ChromeAppProject" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'chromeAppProject.label', default: 'ChromeAppProject')}" />
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
            <g:hasErrors bean="${chromeAppProjectInstance}">
            <div class="errors">
                <g:renderErrors bean="${chromeAppProjectInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="chromeAppProject.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${gtugio.domain.User.list()}" optionKey="id" value="${chromeAppProjectInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="chromeAppProject.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="50" value="${chromeAppProjectInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="chromeAppProject.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="128" value="${chromeAppProjectInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="detailedDescription"><g:message code="chromeAppProject.detailedDescription.label" default="Detailed Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'detailedDescription', 'errors')}">
                                    <g:textArea name="detailedDescription" cols="40" rows="5" value="${chromeAppProjectInstance?.detailedDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="icon"><g:message code="chromeAppProject.icon.label" default="Icon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'icon', 'errors')}">
                                    <g:textField name="icon" value="${chromeAppProjectInstance?.icon}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appversion"><g:message code="chromeAppProject.appversion.label" default="Appversion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'appversion', 'errors')}">
                                    <g:textField name="appversion" maxlength="16" value="${chromeAppProjectInstance?.appversion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="chromeAppProject.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${chromeAppProjectInstance?.website}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="support"><g:message code="chromeAppProject.support.label" default="Support" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'support', 'errors')}">
                                    <g:textField name="support" value="${chromeAppProjectInstance?.support}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="kind"><g:message code="chromeAppProject.kind.label" default="Kind" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'kind', 'errors')}">
                                    <g:select name="kind" from="${chromeAppProjectInstance.constraints.kind.inList}" value="${chromeAppProjectInstance?.kind}" valueMessagePrefix="chromeAppProject.kind"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="repository"><g:message code="chromeAppProject.repository.label" default="Repository" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'repository', 'errors')}">
                                    <g:textField name="repository" value="${chromeAppProjectInstance?.repository}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="chromeAppProject.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${chromeAppProjectInstance.constraints.status.inList}" value="${chromeAppProjectInstance?.status}" valueMessagePrefix="chromeAppProject.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approvedBy"><g:message code="chromeAppProject.approvedBy.label" default="Approved By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'approvedBy', 'errors')}">
                                    <g:textField name="approvedBy" value="${chromeAppProjectInstance?.approvedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="approveDate"><g:message code="chromeAppProject.approveDate.label" default="Approve Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'approveDate', 'errors')}">
                                    <g:datePicker name="approveDate" precision="day" value="${chromeAppProjectInstance?.approveDate}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declinedBy"><g:message code="chromeAppProject.declinedBy.label" default="Declined By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'declinedBy', 'errors')}">
                                    <g:textField name="declinedBy" value="${chromeAppProjectInstance?.declinedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineDate"><g:message code="chromeAppProject.declineDate.label" default="Decline Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'declineDate', 'errors')}">
                                    <g:textField name="declineDate" value="${chromeAppProjectInstance?.declineDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declineReason"><g:message code="chromeAppProject.declineReason.label" default="Decline Reason" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'declineReason', 'errors')}">
                                    <g:textField name="declineReason" value="${chromeAppProjectInstance?.declineReason}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="published"><g:message code="chromeAppProject.published.label" default="Published" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'published', 'errors')}">
                                    <g:datePicker name="published" precision="day" value="${chromeAppProjectInstance?.published}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updated"><g:message code="chromeAppProject.updated.label" default="Updated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'updated', 'errors')}">
                                    <g:datePicker name="updated" precision="day" value="${chromeAppProjectInstance?.updated}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="appMarketPlaceURL"><g:message code="chromeAppProject.appMarketPlaceURL.label" default="App Market Place URL" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: chromeAppProjectInstance, field: 'appMarketPlaceURL', 'errors')}">
                                    <g:textField name="appMarketPlaceURL" value="${chromeAppProjectInstance?.appMarketPlaceURL}" />
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

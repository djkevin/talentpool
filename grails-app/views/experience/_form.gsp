<%@ page import="talentpool.Experience" %>



<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'companyName', 'error')} ">
    <label for="companyName">
        <g:message code="experience.companyName.label" default="Company Name"/>

    </label>
    <g:textField name="companyName" value="${experienceInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="experience.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${experienceInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'location', 'error')} ">
    <label for="location">
        <g:message code="experience.location.label" default="Location"/>

    </label>
    <g:textField name="location" maxlength="100" value="${experienceInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'dateFrom', 'error')} ">
    <label for="dateFrom">
        <g:message code="experience.dateFrom.label" default="Date From"/>

    </label>
    <g:textField name="dateFrom" value="${experienceInstance?.dateFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'dateTo', 'error')} ">
    <label for="dateTo">
        <g:message code="experience.dateTo.label" default="Date To"/>

    </label>
    <g:textField name="dateTo" value="${experienceInstance?.dateTo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'isCurrentPosition', 'error')} ">
    <label for="isCurrentPosition">
        <g:message code="experience.isCurrentPosition.label" default="Is Current Position"/>

    </label>
    <g:checkBox name="isCurrentPosition" value="${experienceInstance?.isCurrentPosition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: experienceInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="experience.description.label" default="Description"/>

    </label>
    <g:textArea name="description" cols="40" rows="5" maxlength="500" value="${experienceInstance?.description}"/>
</div>


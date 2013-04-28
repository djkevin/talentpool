<%@ page import="talentpool.Education" %>



<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="education.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${educationInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="education.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${educationInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'degree', 'error')} ">
	<label for="degree">
		<g:message code="education.degree.label" default="Degree" />
		
	</label>
	<g:textField name="degree" maxlength="100" value="${educationInstance?.degree}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'fieldOfStudy', 'error')} ">
	<label for="fieldOfStudy">
		<g:message code="education.fieldOfStudy.label" default="Field Of Study" />
		
	</label>
	<g:textField name="fieldOfStudy" maxlength="100" value="${educationInstance?.fieldOfStudy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'grade', 'error')} ">
	<label for="grade">
		<g:message code="education.grade.label" default="Grade" />
		
	</label>
	<g:textField name="grade" maxlength="100" value="${educationInstance?.grade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'activities', 'error')} ">
	<label for="activities">
		<g:message code="education.activities.label" default="Activities" />
		
	</label>
	<g:textArea name="activities" cols="40" rows="5" maxlength="500" value="${educationInstance?.activities}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="education.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${educationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="education.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${talentpool.Person.list()}" optionKey="id" required="" value="${educationInstance?.person?.id}" class="many-to-one"/>
</div>


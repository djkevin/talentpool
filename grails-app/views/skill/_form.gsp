<%@ page import="talentpool.Skill" %>



<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="skill.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${talentpool.Person.list()}" optionKey="id" required="" value="${skillInstance?.person?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'skillName', 'error')} ">
	<label for="skillName">
		<g:message code="skill.skillName.label" default="Skill Name" />
		
	</label>
	<g:textField name="skillName" value="${skillInstance?.skillName}"/>
</div>


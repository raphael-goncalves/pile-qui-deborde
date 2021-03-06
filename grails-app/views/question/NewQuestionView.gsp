<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'questionstyle.css')}" type="text/css">
		<g:javascript library='jquery' />
		<title><g:message code="default.label.newquestion"/></title>
	</head>
	
	<body>
		<div id="container">
		
			<a href="${createLink(uri: '/', absolute: true)}"><- Return to main page</a><br/><br/>
		
			<g:renderErrors bean="${question}" />
			<g:form name="formnewquestion">	
				<fieldset>
					<legend><g:message code="default.label.fillfields"/></legend>
					
					<p  class='${hasErrors(bean:question,field:'title','errors')}'>					
						<label for="title"><g:message code="default.label.title"/></label>
						<g:textField name="title" type="text" size="30" value="${question?.title}" />					
					</p>
					
					<p class='${hasErrors(bean:question,field:'tags','errors')}'>					
						<label for="tags"><g:message code="default.label.tags"/></label>
						<g:textField name="tags" type="text" size="30" />
							<jq:jquery>
								$('#tags').val('')
							</jq:jquery>
						<g:each var="t" in="${question?.tags}">
							<jq:jquery>
								$('#tags').val($('#tags').val() + '${t.word} ');                                
							</jq:jquery>
						</g:each>				
					</p>
					
					<p class='${hasErrors(bean:question,field:'body','errors')}'>
						<label for="body"><g:message code="default.label.question"/></label>
						<g:textArea name="body" cols="50" rows="10" value="${question?.body}" />
					</p>
					
					<p class="submit">
						<g:actionSubmit value="Submit" action="save"/>
					</p>
					
				</fieldset>								
			</g:form>
		</div>
	</body>
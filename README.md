# README

<h1>Event Planner App</h1>
<p>This sample application shows the calendar having events happening in a month and number of users who have accepted the event</p>
<h2>Installation</h2>
<p>
	First, install the gems required by the application:
	<pre>
		<code>
			bundle
		</code>
	</pre>
</p>
<p>Next, Execute the database migration and model creation</p>
<pre>
	<code>rails g model User name:string email:string phone:string</code>
	<code>rails g scaffold Event title:string description:text start_time:datetime end_time:datetime user:references </code>
	<code>rails g UserEvent user:references event:references status:string confirmation_token:string </code>
</pre>
<p>Configure SMTP settings for Gmail</p>
<h2>Start the application</h2>
<pre>
	<code>rails server</code>
</pre>
<p>Try creating an event and check if you are able to get mail and get the status in the Event Index page</p>


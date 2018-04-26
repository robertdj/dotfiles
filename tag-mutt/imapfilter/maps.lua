local account = IMAP {
	server = 'imap.one.com',
	username = 'maps@dahl-jacobsen.dk',
	password = get_imap_password("~/.mutt/accounts/maps.gpg"),
	ssl = 'auto'
}

inbox = account['INBOX']
inbox:check_status()

messages = 
	inbox:match_from('.*@facebookmail.com') *
	(
		inbox:contain_subject('Robert, did you see') +
		inbox:contain_subject('shared a link') +
		inbox:match_subject('updated (his|her) status') +
		inbox:match_subject('comment on (his|her) status') +
		inbox:match_subject('tagged.* in a photo') +
		inbox:match_subject('shared .* post') +
		inbox:match_subject('added a new (photo|video)')
	)
messages:mark_seen()
messages:move_messages(account['Facebook'])

messages = inbox:match_from('.*@facebookmail.com')
messages:move_messages(account['Facebook'])

messages = inbox:match_from('.*@linkedin.com')
messages:move_messages(account['LinkedIn'])

messages = inbox:match_from('.*@noreply.github.com')
messages:move_messages(account['GitHub'])

messages = inbox:match_from('kundeservice@KOKKENShverdagsmad.dk')
messages:move_messages(account['Madkasse'])

messages = inbox:match_from('no-reply@rejsekort.dk')
messages:move_messages(account['Rejsekort'])

messages = inbox:match_from('noreply@oister.dk')
messages:move_messages(account['Oister'])

messages = inbox:match_from('julialang@discoursemail.com')
messages:move_messages(account['Forum'])

messages = 
	inbox:match_from('e-medd@dsts.dk') +
	inbox:match_subject('^[DMF]')
messages:move_messages(account['DSTS'])


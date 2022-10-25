Redmine::Plugin.register :redmine_editauthor do
  name "Redmine Edit Issue Author"
  author "Ralph Gutkowski"
  description "Edit author of issue."
  version '0.12.0'
  url 'https://github.com/rgtk/redmine_editauthor'

  settings default: {
    'members_scope' => false
  }, partial: 'settings/redmine_editauthor'

  project_module :issue_tracking do
    permission :edit_issue_author, {}
    permission :set_original_issue_author, {}
  end
end
# frozen_string_literal: true

# NOTE: only doing this in development as some production environments (Heroku)
# NOTE: are sensitive to local FS writes, and besides -- it's just not proper
# NOTE: to have a dev-mode tool do its thing in production.
if Rails.env.development?
  task set_annotation_options: :environment do
    # You can override any of these by setting an environment variable of the
    # same name.
    Annotate.set_defaults(
      {
        'position_in_routes' => 'before',
        'position_in_class' => 'before',
        'show_indexes' => 'true',
        'simple_indexes' => 'false',
        'model_dir' => 'app/models',
        'require' => '',
        'exclude_tests' => 'true',
        'exclude_fixtures' => 'true',
        'exclude_factories' => 'true',
        'format_bare' => 'true',
        'format_rdoc' => 'false',
        'format_markdown' => 'false',
        'sort' => 'true',
        'force' => 'false',
        'trace' => 'false'
      }
    )
  end

  Annotate.load_tasks
end

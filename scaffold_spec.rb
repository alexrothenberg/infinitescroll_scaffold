Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the specified folder must contain this file
  base_url  'https://github.com/alexrothenberg/infinitescroll_scaffold'

  # The name of your new scaffold: should be a single word
  name 'infinitescroll'

  # Metadata about this scaffold - these values are only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'Have you ever wondered how facebook and twitter automatically paginate as you scroll to the bottom of the page? This scaffold combines pagination with some AJAX to give you infinite scrolling.'

    # 4x3 aspect ratio screen shot
    screenshot 'infinitescroll_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'jquery'
    tag 'infinitescroll'
    tag 'pagination'

    # Optionally post a link to an article you write explaining how the scaffold works.
    blog_post 'https://github.com/amatsuda/kaminari/wiki/How-To:-Create-Infinite-Scrolling-with-jQuery'
  end

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  # You can also specify the same destination folder using the :dest option,
  # or just use the :src and :dest options on each keyword.
  with_options :src => 'templates' do
    view '_form.html.erb'
    view '_model.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.js.erb'
    view 'index.html.erb'
    view 'show.html.erb'

    view 'layout.erb',  :dest => 'app/views/layouts'
    template 'db_populate.rake', :dest => 'lib/tasks'
  end

  with_options :src => 'templates/javascripts', :dest => 'public/javascripts' do
    file 'jquery-1.6.min.js'
  end


  # Other keywords available are:

  # Define any other generic template - this ERB file will be used to generate
  # a new file - the dest option is required to indicate where to put the new file
  # template 'xyz.html.erb', :dest => 'path/to/xyz.html'

  # Copy any file without running an ERB transformation
  # file 'xyz.html', :dest => 'path/to/xyz.html'

end

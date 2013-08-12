require 'zeus/rails'

class CustomPlan < Zeus::Rails

  # def my_custom_command
  #  # see https://github.com/burke/zeus/blob/master/docs/ruby/modifying.md
  # end
  def test
    require 'simplecov'
    SimpleCov.start do
      add_group "Models", "app/models"
      add_group "Controllers", "app/controllers"
      add_group "Helpers", "app/helpers"
      add_group "Uploader", "app/uploaders"
      add_group "Mailer", "app/mailers"
      add_filter '/test/'
      add_filter '/config/'
      add_filter '/vendor/'
      add_filter '/spec/'
      use_merging true
    end
    
    Dir["#{Rails.root}/app/**/*.rb"].each { |f| load f }
    
    super
  end
  
  def after_fork
    srand
    super
  end
end

Zeus.plan = CustomPlan.new

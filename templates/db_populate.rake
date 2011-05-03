namespace :db do
  namespace :populate do
    task :<%= plural_table_name %> => :environment do
      100.times { <%= class_name %>.create! }
    end
  end
end
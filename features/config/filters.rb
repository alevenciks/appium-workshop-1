require 'yaml'
class Filter
  @parameters = []

  def initialize(type)
    config = YAML.load_file('filters.yml')[type]
    @name = config['name']
    @category = config['category']
    @sub_categories = []
    config['sub_categories'].each do |sub_cat|
      temp_hash = {'title' => sub_cat['sub_category'].first['title'], 'option' => sub_cat['sub_category'].last['option']}
      @sub_categories.push temp_hash
    end
    @parameters = []
    config['parameters'].each do |param|
      temp_hash = {'name' => param['parameter'].at(0)['name'], 'left' => param['parameter'].at(1)['left'], 'right' => param['parameter'].at(2)['right']}
      @parameters.push temp_hash
    end

  end

  def print_properties
    print 'Name:' + @name
    print "\nCategory:" + @category
    print "\nSub Categories:"
    @sub_categories.each do |sub_cat|
      print "\n\t - " + sub_cat['title'] + ' ' + sub_cat['option']
    end
    @parameters.each do |param|
      print "\n\t - " + param['name'] + ' ' + param['left'] + ' ' + param['right']
    end
    print "\n"
  end
end

filter = Filter.new('property_positive')

filter.print_properties

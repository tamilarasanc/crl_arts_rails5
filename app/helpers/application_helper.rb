module ApplicationHelper

  def custom_autocomplete(name, search_obj, field, populate_obj)
    search_data=search_obj.collect{|x| {:name=>eval("x."+field), :id=>x.id}}.to_json
    prepopulate=populate_obj.collect{|x| {:name=>eval("x."+field), :id=>x.id}}.to_json
    id=name.gsub('[', '_').chop.gsub(']', '_').chop

    auto_complete="<input type='text' id='#{id}'/>
    <script type='text/javascript'>
        $(document).ready(function() {
             $('##{id}').tokenInput(#{search_data}, {
             prePopulate: #{prepopulate},
             preventDuplicates: true,
             tokenName:'#{name}[]',
            });
        });
    </script>"

    auto_complete
  end

end

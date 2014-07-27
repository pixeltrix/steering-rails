require 'test_helper'

class SteeringRailsTest < Test::Unit::TestCase
  FIXTURE_ROOT = File.expand_path('../fixtures', __FILE__)

  def fixture_path(path)
    File.join(FIXTURE_ROOT, path)
  end

  def render(path)
    Steering::Rails::Template.new(fixture_path(path)).render
  end

  def test_template
    expected = <<-EOF
Handlebars.template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, helper, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "Hello ";
  if (helper = helpers.name) { stack1 = helper.call(depth0, {hash:{},data:data}); }
  else { helper = (depth0 && depth0.name); stack1 = typeof helper === functionType ? helper.call(depth0, {hash:{},data:data}) : helper; }
  buffer += escapeExpression(stack1)
    + "\\n";
  return buffer;
  })
EOF

    assert_equal expected.strip, render('hello.jst.handlebars')
  end
end
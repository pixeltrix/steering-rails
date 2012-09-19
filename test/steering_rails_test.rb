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
  helpers = helpers || Handlebars.helpers;
  var buffer = "", stack1, foundHelper, functionType="function", escapeExpression=this.escapeExpression;


  buffer += "Hello ";
  foundHelper = helpers.name;
  if (foundHelper) { stack1 = foundHelper.call(depth0, {hash:{}}); }
  else { stack1 = depth0.name; stack1 = typeof stack1 === functionType ? stack1() : stack1; }
  buffer += escapeExpression(stack1) + "\\n";
  return buffer;})
EOF

    assert_equal expected.strip, render('hello.jst.handlebars')
  end
end
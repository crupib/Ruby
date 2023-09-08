# calculator.rb

require 'sinatra'

# Define the route for the calculator form
get '/' do
  erb :calculator
end

# Define the route to calculate and display the result
post '/calculate' do
  @num1 = params[:num1].to_f
  @num2 = params[:num2].to_f
  @operator = params[:operator]

  @result = case @operator
  when '+'
    @num1 + @num2
  when '-'
    @num1 - @num2
  when '*'
    @num1 * @num2
  when '/'
    if @num2 != 0
      @num1 / @num2
    else
      'Error: Division by zero'
    end
  else
    'Error: Invalid operator'
  end

  erb :calculator
end

# Create a view template for the calculator form and result
__END__

@@ calculator
<!DOCTYPE html>
<html>
<head>
  <title>Simple Calculator</title>
</head>
<body>
  <h1>Simple Calculator</h1>
  <form action="/calculate" method="post">
    <input type="text" name="num1" placeholder="Enter a number" required>
    <input type="text" name="num2" placeholder="Enter another number" required>
    <select name="operator">
      <option value="+">+</option>
      <option value="-">-</option>
      <option value="*">*</option>
      <option value="/">/</option>
    </select>
    <input type="submit" value="Calculate">
  </form>

  <% if @result %>
    <h2>Result: <%= @result %></h2>
  <% end %>
</body>
</html>


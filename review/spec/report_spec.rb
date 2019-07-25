require 'report'

describe Report do
  it 'throws an error if input is empty' do
    report = Report.new
    expect { report.calculate("") }.to raise_error(ArgumentError, "Input is empty")

  end

end

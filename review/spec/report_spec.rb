require 'report'

describe Report do
  it 'throws an error if input is empty' do
    report = Report.new
    expect { report.calculate("") }.to raise_error(ArgumentError, "Input is empty")
  end

  it 'counters the number of colours in the report' do
    report = Report.new
    expect(report.calculate("green,amber,red")).to eq("green: 1, amber: 1, red: 1")
  end

  it 'counters the number of multiple colours in the report' do
    report = Report.new
    expect(report.calculate("green,amber,red,green,amber,red,green,amber,red,green")).to eq("green: 4, amber: 3, red: 3")
  end

  it 'counters the number of multiple colours in the report' do
    report = Report.new
    expect(report.calculate("Harry,amber,red")).to eq("amber: 1, red: 1, uncounted: 1")
  end

end

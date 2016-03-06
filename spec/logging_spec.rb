describe LOGGER do
  let(:logdev) { LOGGER.instance_variable_get(:@logdev) }

  subject { LOGGER.info('message') }

  before do
    Timecop.freeze(Time.local(2008, 9, 1, 10, 5, 0))
  end

  after do
    Timecop.return
  end

  it 'should match time format and log style' do
    expect(logdev).to receive(:write).with("#{Time.now.iso8601} INFO  message\n")
    subject
  end
end


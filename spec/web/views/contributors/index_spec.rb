require_relative '../../../../apps/web/views/contributors/index'

RSpec.describe Web::Views::Contributors::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/contributors/index.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  describe '#link_to_github' do
    let(:contributor) { Contributor.new(github: 'davydovanton') }

    it 'returns link to contributor github' do
      expect(view.link_to_github(contributor).to_s).to eq '<a href="/contributors/davydovanton">davydovanton</a>'
    end
  end
end

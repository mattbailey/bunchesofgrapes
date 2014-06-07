require 'spec_helper'

module Bunches
  describe Config.instance do
    it { should be_kind_of Bunches::Config }
    it { should be_kind_of Singleton }
  end
  describe Config.instance.es do
    it { should be_kind_of Elasticsearch::Transport::Client }
  end
end

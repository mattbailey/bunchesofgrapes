Vagrant.configure("2") do |config|

  # Config for core application
  config.vm.define "bunches" do |app|
    app.vm.provider "docker" do |d|
      d.name      = "bunches"
      d.build_dir = "."
      d.ports     = ["9292:9292"]
      d.expose    = [9292]
      d.link "elasticsearch"
    end
  end

  # Config for ElasticSearch data store
  config.vm.define "elasticsearch" do |app|
    app.vm.provider "docker" do |d|
      d.name   = "elasticsearch"
      d.image  = "dockerfile/elasticsearch"
      d.ports  = ["9200:9200"]
      d.expose = [9200]
    end
  end

end

class CustomCollector < PrometheusExporter::Server::TypeCollector
  unless defined? Rails
    require File.expand_path("../../config/environment", __FILE__)
  end

  def type
    "spajic_posts"
  end

  def metrics
    spajic_posts_gague = PrometheusExporter::Metric::Gauge.new('spajic_posts', 'number of spajic posts')
    spajic_posts_gague.observe User.find_by_name('Alexey Vasilyev').articles.count
    [spajic_posts_gague]
  end
end

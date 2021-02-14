class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries"
  homepage "https://github.com/Conky5/eq"
  license "Apache-2.0"
  version "1.0.2"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "267679723596cd5c0dbe3fecc178673109be070de079637a991320dc3d9f2cf1"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-aarch64-aarch64-linux-gnu.tar.gz"
      sha256 "65271b580384fd5066cb7bd7a6402c25a3745709b2d252fa66f75d8a7ac3b996"
    else
      url "https://github.com/Conky5/eq/releases/download/v#{version}/eq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f853110194a5af91a0da3cd1c3b5e86177378fada26c432a8f7a40f7d5e4806"
    end
  end

  def install
    bin.install "eq"
    man1.install "eq.1"
  end

  test do
    system "#{bin}/eq --version"
  end
end


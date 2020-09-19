class Eq < Formula
  desc "A simple command line interface for Elasticsearch queries."
  homepage "https://github.com/Conky5/eq"
  version "0.4.0"

  if OS.mac?
    url "https://github.com/Conky5/eq/releases/download/v0.4.0/eq-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "ced3c0694c68c53014989cf60ac9e46a7aaea819ec03bb990e9105f3954ee0b3"
  elsif OS.linux?
    url "https://github.com/Conky5/eq/releases/download/v0.4.0/eq-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e1f8c9c351e714a7a889aa2d4388bb1e37f39d1a1c13d85c921678eb0a1fbc79"
  end

  def install
    bin.install "eq"
  end

  test do
    system "#{bin}/eq --version"
  end
end


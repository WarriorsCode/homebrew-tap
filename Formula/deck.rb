class Deck < Formula
  desc "Lightweight local dev orchestrator"
  homepage "https://github.com/WarriorsCode/deck"
  url "https://github.com/WarriorsCode/deck/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "1eb9541c192b08da64403b6374d032e7682985cfb9ef4da286f5da42829c0354"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/warriorscode/deck.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/deck"
  end

  test do
    system bin/"deck", "--version"
  end
end

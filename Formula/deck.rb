class Deck < Formula
  desc "Lightweight local dev orchestrator"
  homepage "https://github.com/WarriorsCode/deck"
  url "https://github.com/WarriorsCode/deck/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "6f73db93becc543b65d52c1332866ddd00ba0db807bff6d5e6f5ebd15e5147ba"
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

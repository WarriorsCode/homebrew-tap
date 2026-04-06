class Deck < Formula
  desc "Lightweight local dev orchestrator"
  homepage "https://github.com/WarriorsCode/deck"
  url "https://github.com/WarriorsCode/deck/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "a5576c4b2a501013b4a902e3aa1c8148cbc3059ec0ca98550b30771cf0c14b9b"
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

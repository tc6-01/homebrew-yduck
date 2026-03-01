class Yduck < Formula
  desc "Mac dev environment & AI coding tools setup CLI"
  homepage "https://github.com/tc6-01/YangDuck"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tc6-01/YangDuck/releases/download/v0.1.0/yduck-darwin-arm64"
      sha256 "0806f48f15752d46228afe331147d17d19e42f58ca0e7db7a9bc5104fae6da71"
    else
      url "https://github.com/tc6-01/YangDuck/releases/download/v0.1.0/yduck-darwin-amd64"
      sha256 "f36985edf5996a3a57801da55a6e4904379a00bb31d48266ff45b2728a8d6d90"
    end
  end

  def install
    binary = Dir["yduck-darwin-*"].first
    bin.install binary => "yduck"
  end

  test do
    system "#{bin}/yduck", "--help"
  end
end

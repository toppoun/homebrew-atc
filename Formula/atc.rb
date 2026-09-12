class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.9/atc-v0.1.0-rc.9-macos-aarch64.tar.gz"
  version "0.1.0-rc.9"
  sha256 "2e1c07cc468d74b41af3bc0e3c352dcf8db7fd5d7da7236c609e8a61f0e3015f"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "atc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atc --version")
  end
end
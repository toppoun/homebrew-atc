class Atc < Formula
  desc "Fast AtCoder workflow from your terminal"
  homepage "https://github.com/toppoun/atc-rs"
  url "https://github.com/toppoun/atc-rs/releases/download/v0.1.0-rc.12/atc-v0.1.0-rc.12-macos-aarch64.tar.gz"
  version "0.1.0-rc.12"
  sha256 "3ab2949dfdaa0b78adb28d83ac66bb30203a00472deba9ea6bebaeb042cd9dd8"
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
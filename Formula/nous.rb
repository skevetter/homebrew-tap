class Nous < Formula
  desc "The nous platform CLI"
  homepage "https://github.com/skevetter/nous"
  url "https://github.com/skevetter/nous.git", tag: "v0.4.0", using: :git
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/nous-cli", "--root", prefix
  end

  test do
    assert_match "nous", shell_output("#{bin}/nous --help")
  end
end

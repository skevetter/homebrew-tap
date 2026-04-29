class ChatManagement < Formula
  desc "CLI communication management tool with SQLite backend"
  homepage "https://github.com/skevetter/chat-management"
  url "https://github.com/skevetter/chat-management/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "0a6cbe5676c0e8141706948f2664df1d4d456ffc51fb35482d973aa06d8ee4f7"
  version "0.3.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/chat-management --help")
  end
end


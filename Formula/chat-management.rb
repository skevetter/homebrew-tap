class ChatManagement < Formula
  desc "CLI communication management tool with SQLite backend"
  homepage "https://github.com/skevetter/chat-management"
  url "https://github.com/skevetter/chat-management/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "e6f27c3e98039b0190e8df8c385cc2ed5d5ea88e422765630ca1e9bb523591cf"
  version "0.4.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/chat-management --help")
  end
end


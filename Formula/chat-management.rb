class ChatManagement < Formula
  desc "CLI communication management tool with SQLite backend"
  homepage "https://github.com/skevetter/chat-management"
  url "https://github.com/skevetter/chat-management/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "8dbb6839df378035203e8d4950d82176cc57345ed9ed506b25c18374d2a3a781"
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


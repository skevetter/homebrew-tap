class ChatManagement < Formula
  desc "CLI communication management tool with SQLite backend"
  homepage "https://github.com/skevetter/chat-management"
  url "https://github.com/skevetter/chat-management/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "acdb7d7de4e9ee871360c5afc78570ca6f719f34d49e97100151a60c34432944"
  version "0.3.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/chat-management --help")
  end
end


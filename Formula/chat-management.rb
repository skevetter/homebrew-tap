class ChatManagement < Formula
  desc "CLI communication management tool with SQLite backend"
  homepage "https://github.com/skevetter/chat-management"
  url "https://github.com/skevetter/chat-management/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "91e179bf4f925aae1fc7fb51172f84b0c49aab3f00d578ce7dfa074d16b9ff24"
  version "0.4.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/chat-management --help")
  end
end


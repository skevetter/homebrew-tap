class OrgManagement < Formula
  desc "CLI tool for org-chart, directory lookup, and artifact inventory management"
  homepage "https://github.com/skevetter/org-management"
  url "https://github.com/skevetter/org-management/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3998b4d484fd91c9c53b532b443f5aec213c56ef28388d4b4b2099f558365cf3"
  version "0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/org-management --help")
  end
end

class OrgManagement < Formula
  desc "CLI tool for org-chart, directory lookup, and artifact inventory management"
  homepage "https://github.com/skevetter/org-management"
  url "https://github.com/skevetter/org-management/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "13ab003bdc159b4781834c9f5027862b8e892738ef04a52984b7a16ec1791abe"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    assert_match "Usage", shell_output("#{bin}/org-management --help")
  end
end

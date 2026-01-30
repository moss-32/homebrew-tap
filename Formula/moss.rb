class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.5"


  on_linux do
    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "acf5e92760e72e4cfa44633926d1968590ed439cd80b70cde01ddece022920aa"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "91da88f9bcbd1fe204c9d7e9cb257b0302f5b07d5455245bfd1fdb78f46db331"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "dddbfe2e6dd99240994beb28e72f15d0981e345571f031082ce226657b4d3444"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end

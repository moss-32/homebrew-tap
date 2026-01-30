class Moss < Formula
  desc "Moss Fantasy Console"
  homepage "https://github.com/moss-32/moss"

  version "0.1.7"


  on_linux do

    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-aarch64.tar.gz"
      sha256 "4f4dca1ad07e9138791b62cd198fd30fac646fdc532c3db05caecbf935653439"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-linux-x86_64.tar.gz"
      sha256 "adb2ddd7d72e71e630d124177ca281af4beb3cb1c624c61df7fafd57c17aab10"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-arm64.tar.gz"
      sha256 "81188567d914ce1fbecda599435eb3f90014b02c75e76878c8a5233e0cf0d4e0"
    end

    on_intel do
      url "https://github.com/moss-32/moss/releases/download/v#{version}/moss-#{version}-macos-x86_64.tar.gz"
      sha256 "0d73f39bcf16574706a5432f764c2b7c772390816480b5d473509ce24cd39030"
    end
  end



def install
    os = OS.mac? ? "macos" : "linux"

    arch = Hardware::CPU.arm? ? (OS.mac? ? "arm64" : "aarch64") : "x86_64"

    bin.install "moss-#{os}-#{arch}" => "moss"
  end

end

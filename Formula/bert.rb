# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bert < Formula
  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/bert/"
  version "2.3.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sha1n/bert/releases/download/v2.3.17/bert_2.3.17_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f66fbb18c23a5e197f58f1391d6aa264cdc3815d42a8c4c85d6f7c0a70d5c98"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sha1n/bert/releases/download/v2.3.17/bert_2.3.17_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "67c646eebae0da559e66fa17f1c22b1b721a8f6130914a56f25c778adaa4fede"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sha1n/bert/releases/download/v2.3.17/bert_2.3.17_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3806a6fc249099cd87f62b1c2107211bcd581cf95840a7150ab08871ba5b35ec"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sha1n/bert/releases/download/v2.3.17/bert_2.3.17_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "df217143a65517b812f330e695bcb61329c316c7fbbdcfde450f432d3c3cfc07"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sha1n/bert/releases/download/v2.3.17/bert_2.3.17_Linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "fd1cb65512577a106b1b0bcabfd417732c091cadb49dfc4c1813d048a67a358d"

      def install
        bin.install "bert"
        bash_completion.install "completions/bert.bash" => "bert"
        fish_completion.install "completions/bert.fish" => "bert"
        zsh_completion.install "completions/_bert" => "_bert"
      end
    end
  end

  test do
    system "#{bin}/bert --version"
  end
end

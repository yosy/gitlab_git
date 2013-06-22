# Libraries
require 'ostruct'
require 'fileutils'
require 'grit'
require 'linguist'
require 'active_support/core_ext/hash/keys'
require 'grit'
require 'grit_ext'

Grit::Blob.class_eval do
  include Linguist::BlobHelper
end

# Rugged, fetching the development branch.. 
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "../vendor/rugged/lib")
require 'rugged'


# Gitlab::Git
require_relative "gitlab_git/popen"
require_relative "gitlab_git/blame"
require_relative "gitlab_git/blob"
require_relative "gitlab_git/commit"
require_relative "gitlab_git/compare"
require_relative "gitlab_git/diff"
require_relative "gitlab_git/repository"
require_relative "gitlab_git/stats"
require_relative "gitlab_git/tree"
require_relative "gitlab_git/blob_snippet"

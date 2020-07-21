$:.unshift File.expand_path("./../lib", __FILE__)
require 'pry'
require 'csv'
require 'controller'
require'bundler'
Bundler.require

class Gossip
    attr_reader :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        CSV.open('./db/gossip.csv','a+') do |csv|
            csv << [@author, @content]
        end
    end
end


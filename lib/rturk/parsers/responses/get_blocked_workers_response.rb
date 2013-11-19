module RTurk
  class GetBlockedWorkersResponse < Response
    def workers
      @workers ||= @xml.xpath('//WorkerBlock').map do |worker_xml|
        BlockedWorkerParser.new(worker_xml)
      end
    end
  end
end

module RTurk
  class BlockedWorkerParser < RTurk::Parser
    attr_reader :worker_id, :reason

    def initialize(payment_xml)
      @xml_obj = payment_xml
      map_content(@xml_obj,
                  :worker_id => 'WorkerId',
                  :reason => 'Reason')
    end
  end
end

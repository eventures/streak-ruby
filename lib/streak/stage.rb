module Streak
  class Stage < StreakObject
    def self.all(pipeline_key)
      res = Streak.request(:get, "/v1/pipelines/#{pipeline_key}/stages")
      convert_to_streak_object(res, Stage)
    end

    def self.find(pipeline_key, stage_key)
      res = Streak.request(:get, "/v1/pipelines/#{pipeline_key}/stages/#{stage_key}")
      convert_to_streak_object(res, Stage)
    end

    def self.create(pipeline_key, params, api_key=nil)
      res = Streak.request(:put, "/v1/pipelines/#{pipeline_key}/stages", params, api_key)
      convert_to_streak_object(res, Stage)
    end
  end
end


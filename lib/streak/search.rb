module Streak
  class Search < StreakObject
    def self.query(s_query)
      res = Streak.request(:get, "/v1/search", {query: s_query})
      convert_to_streak_object(res, Search)
    end
  end
end

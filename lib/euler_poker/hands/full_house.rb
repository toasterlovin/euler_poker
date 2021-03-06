module EulerPoker
  class FullHouse
    include Handable

    def instance_comparison(other)
      if triplet_rank == other.triplet_rank
        return pair_rank <=> other.pair_rank
      else
        return triplet_rank <=> other.triplet_rank
      end
    end

    def triplet_rank
      rank_counts
        .find { |rank, count| count == 3 }
        .first
    end

    def pair_rank
      rank_counts
        .find { |rank, count| count == 2 }
        .first
    end

    def valid?
      full_house?
    end
  end
end

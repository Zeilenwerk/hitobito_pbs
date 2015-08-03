# encoding: utf-8

#  Copyright (c) 2012-2015, Pfadibewegung Schweiz. This file is part of
#  hitobito_youth and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_youth.

module Pbs::Export::Csv::People::ParticipationNdbjsRow
  extend ActiveSupport::Concern

  included do
    alias_method_chain :first_language, :correspondence_language
  end

  def first_language_with_correspondence_language
    lang = entry.correspondence_language
    lang ? lang.first.capitalize : 'D'
  end
end

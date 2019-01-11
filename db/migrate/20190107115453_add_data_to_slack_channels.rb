class AddDataToSlackChannels < ActiveRecord::Migration[5.2]
  def up
    project("asyncvoter").slack_channels.create(code: "C2HGJF54G", environment: :production)
    project("autograder").slack_channels.create(code: "C0UFNHRAB", environment: :production)
    project("autograder").slack_channels.create(code: "C02AHEA5P", environment: :production)
    project("betasaasers").slack_channels.create(code: "C02AHEA5P", environment: :production)
    project("binghamton-university-bike-share").slack_channels.create(code: "C033Z02P9", environment: :production)
    project("codealia").slack_channels.create(code: "C0297TUQC", environment: :production)
    project("communityportal").slack_channels.create(code: "C02HVF1TP", environment: :production)
    project("cs169").slack_channels.create(code: "C02A6835V", environment: :production)
    project("dda-pallet").slack_channels.create(code: "C2QM5N48P", environment: :production)
    project("educhat").slack_channels.create(code: "C02AD0LG0", environment: :production)
    project("esaas-mooc").slack_channels.create(code: "C02A6835V", environment: :production)
    project("eventmanager").slack_channels.create(code: "C39J4DTP0", environment: :production)
    project("agileventures-community").slack_channels.create(code: "C3Q9A5ZJA", environment: :production)
    project("agileventures-community").slack_channels.create(code: "C02P3CAPA", environment: :production)
    project("metplus").slack_channels.create(code: "C0VEPAPJP", environment: :production)
    project("localsupport").slack_channels.create(code: "C0KK907B5", environment: :production)
    project("osra-support-system").slack_channels.create(code: "C02AAM8SY", environment: :production)
    project("github-api-gem").slack_channels.create(code: "C02QZ46S9", environment: :production)
    project("oodls").slack_channels.create(code: "C03GBBASJ", environment: :production)
    project("phoenixone").slack_channels.create(code: "C7JANJXC4", environment: :production)
    project("projectscope").slack_channels.create(code: "C1NJX7KM1", environment: :production)
    project("redeemify").slack_channels.create(code: "C1FQZHJJX", environment: :production)
    project("refugee_tech").slack_channels.create(code: "C0GUTH7RS", environment: :production)
    project("rundfunk-mitbestimmen").slack_channels.create(code: "C5LCQSJMA", environment: :production)
    project("secondappinion").slack_channels.create(code: "C03D6RUR7", environment: :production)
    project("shf-project").slack_channels.create(code: "C2SBUUNRY", environment: :production)
    project("snow-angels").slack_channels.create(code: "C03D6RUR7", environment: :production)
    project("takemeaway").slack_channels.create(code: "C04B0TN0S", environment: :production)
    project("teamaidz").slack_channels.create(code: "C03DA8NH0", environment: :production)
    project("visualizer").slack_channels.create(code: "C3NE9JQJX", environment: :production)
    project("websiteone").slack_channels.create(code: "C029E8G80", environment: :production)
    project("websitetwo").slack_channels.create(code: "C0ASA1X98", environment: :production)
    project("wiki-ed-dashboard").slack_channels.create(code: "C36MNPWTD", environment: :production)
    
    # PREGUNTAR
    project("general").slack_channels.create(code: "C0285CSUF", environment: :production)
    project("pairing_notifications").slack_channels.create(code: "C02BNVCM1", environment: :production)
    project("standup_notifications").slack_channels.create(code: "C02B4QH1C", environment: :production)
    project("premium_mob_trialists").slack_channels.create(code: "GBNRMP4KH", environment: :production)
    project("premium_extra").slack_channels.create(code: "G33RPEG8K", environment: :production)

    project("multiple-channels").slack_channels.create(code: "C69J9GC1Y")
    project("multiple-channels").slack_channels.create(code: "C29J4QQ9W")
    project("cs169").slack_channels.create(code: "C29J4CYA2")
    project("websiteone").slack_channels.create(code: "C29J4QQ9W")
    project("localsupport").slack_channels.create(code: "C69J9GC1Y")

    project("general").slack_channels.create(code: "C0TLAE1MH")
    project("pairing_notifications").slack_channels.create(code: "C29J3DPGW")
    project("standup_notifications").slack_channels.create(code: "C29JE6HGR")
    project("premium_extra").slack_channels.create(code: "C29J4QQ9M")
    project("premium_mob_trialists").slack_channels.create(code: "C29J4QQ9F")

  end
  def down
    SlackChannel.destroy_all
  end

  private

  def project(slug)
    Project.find_by(slug: slug)
  end
end

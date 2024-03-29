class Faq
    include DataMapper::Resource

    property :id, Serial
    property :uuid, String, required: true, unique: true
    property :question, Text, required: true
    property :answer, Text, required: true
    property :published, Boolean, default: true
    property :created_at, EpochTime

    belongs_to :user
    has n, :categories, through: Resource, required: false

    def self.delete(app:, user:, params:)
        return Faq.first(uuid: params[:faq]).destroy!
    end
end

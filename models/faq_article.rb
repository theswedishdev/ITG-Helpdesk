class Faq
    include DataMapper::Resource

    property :id, Serial
    property :uuid, String, required: true, unique: true
    property :question, Text, required: true
    property :answer, Text, required: true
    property :created_at, EpochTime

    belongs_to :user
end

### Models
- Syllabus
    - title
    - description
    - image_url
    - category_id
- Category
    - name

### Associations

```ruby
Syllabus

belongs_to :category

Category

has_many :syllabuses

```

### Seed Data

```ruby
art = Category.create(name: "Art")
tech = Category.create(name: "Tech")
science = Category.create(name: "Science")

Syllabus.create(title: "West African Art History", description: "West African cultures developed bronze casting for reliefs, like the famous Benin Bronzes, to decorate palaces and for highly naturalistic royal heads from around the Bini town of Benin City, Edo State, as well as in terracotta or metal, from the 12th–14th centuries. Akan goldweights are a form of small metal sculptures produced over the period 1400–1900; some apparently represent proverbs, contributing a narrative element rare in African sculpture; and royal regalia included impressive gold sculptured elements.[8] Many West African figures are used in religious rituals and are often coated with materials placed on them for ceremonial offerings. The Mande-speaking peoples of the same region make pieces from wood with broad, flat surfaces and arms and legs shaped like cylinders. In Central Africa, however, the main distinguishing characteristics include heart-shaped faces that are curved inward and display patterns of circles and dots.", image_url: "https://upload.wikimedia.org/wikipedia/commons/9/97/AdinkraCalabashStamps.jpg", category_id: art.id)

# source: https://en.wikipedia.org/wiki/African_art
```

#### Questions
1. Why should we do our migrations in our respective branches?
2. What is the `belongs_to` [attribute in migrations](https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association) doing for us? What's best practice?

### Stretch Goals
- Authentication + Authorization
    - User
      - name
      - email
      - password_digest
      - bio
      - website
      - image_url
- Image Upload
- Build out syllabi features (projects, keywords, learning goals, required resources, etc.)

### Stretch Goals Seed Data

```ruby
ayana = User.create(name: "Ayana", email: "ayana@ayana.com", password: "pw", bio: "i love ruby", website: "ayana.com", image_url: "https://avatars1.githubusercontent.com/u/892860?s=460&v=4")
alice = User.create(name: "Alice", email: "alice@alice.com", password: "pw", bio: "i love javascript", website: "alice.com", image_url: "https://avatars2.githubusercontent.com/u/17302921?s=460&u=a891c6398fe5f4e38bab9f6b7bd52c085f82dc0a&v=4")
beth = User.create(name: "Beth", email: "beth@beth.com", password: "pw", bio: "i love react", website: "beth.com", image_url: "https://avatars1.githubusercontent.com/u/19947416?s=460&u=1a9dbeda46b5703ab337803b03a7d0e77a38dc81&v=4")
```

package SemanticWeb::Schema::CreativeWork;

# ABSTRACT: The most generic kind of creative work

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The most generic kind of creative work, including books, movies,
photographs, software programs, etc.




=head1 ATTRIBUTES


=head2 C<about>



The subject matter of the content.


A about should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has about => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<access_mode>

C<accessMode>

The human sensory perceptual system or cognitive faculty through which a
person may process or perceive information. Expected values include:
auditory, tactile, textual, visual, colorDependent, chartOnVisual,
chemOnVisual, diagramOnVisual, mathOnVisual, musicOnVisual, textOnVisual.


A access_mode should be one of the following types:

=over

=item C<Str>

=back

=cut

has access_mode => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<access_mode_sufficient>

C<accessModeSufficient>

A list of single or combined accessModes that are sufficient to understand
all the intellectual content of a resource. Expected values include:
auditory, tactile, textual, visual.


A access_mode_sufficient should be one of the following types:

=over

=item C<Str>

=back

=cut

has access_mode_sufficient => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accessibility_api>

C<accessibilityAPI>

=begin html

Indicates that the resource is compatible with the referenced accessibility
API (<a href="http://www.w3.org/wiki/WebSchemas/Accessibility">WebSchemas
wiki lists possible values</a>).

=end html


A accessibility_api should be one of the following types:

=over

=item C<Str>

=back

=cut

has accessibility_api => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accessibility_control>

C<accessibilityControl>

=begin html

Identifies input methods that are sufficient to fully control the described
resource (<a
href="http://www.w3.org/wiki/WebSchemas/Accessibility">WebSchemas wiki
lists possible values</a>).

=end html


A accessibility_control should be one of the following types:

=over

=item C<Str>

=back

=cut

has accessibility_control => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accessibility_feature>

C<accessibilityFeature>

=begin html

Content features of the resource, such as accessible media, alternatives
and supported enhancements for accessibility (<a
href="http://www.w3.org/wiki/WebSchemas/Accessibility">WebSchemas wiki
lists possible values</a>).

=end html


A accessibility_feature should be one of the following types:

=over

=item C<Str>

=back

=cut

has accessibility_feature => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accessibility_hazard>

C<accessibilityHazard>

=begin html

A characteristic of the described resource that is physiologically
dangerous to some users. Related to WCAG 2.0 guideline 2.3 (<a
href="http://www.w3.org/wiki/WebSchemas/Accessibility">WebSchemas wiki
lists possible values</a>).

=end html


A accessibility_hazard should be one of the following types:

=over

=item C<Str>

=back

=cut

has accessibility_hazard => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accessibility_summary>

C<accessibilitySummary>

A human-readable summary of specific accessibility features or
deficiencies, consistent with the other accessibility metadata but
expressing subtleties such as "short descriptions are present but long
descriptions will be needed for non-visual users" or "short descriptions
are present and no long descriptions are needed."


A accessibility_summary should be one of the following types:

=over

=item C<Str>

=back

=cut

has accessibility_summary => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<accountable_person>

C<accountablePerson>

Specifies the Person that is legally accountable for the CreativeWork.


A accountable_person should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has accountable_person => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AggregateRating']>

=back

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<alternative_headline>

C<alternativeHeadline>

A secondary title of the CreativeWork.


A alternative_headline should be one of the following types:

=over

=item C<Str>

=back

=cut

has alternative_headline => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<associated_media>

C<associatedMedia>

A media object that encodes this CreativeWork. This property is a synonym
for encoding.


A associated_media should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=back

=cut

has associated_media => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<audio>



An embedded audio object.


A audio should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AudioObject']>

=back

=cut

has audio => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<author>



The author of this content or rating. Please note that author is special in
that HTML 5 provides a special mechanism for indicating authorship via the
rel tag. That is equivalent to this and may be used interchangeably.


A author should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has author => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<award>



An award won by or for this item.


A award should be one of the following types:

=over

=item C<Str>

=back

=cut

has award => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<awards>



Awards won by or for this item.


A awards should be one of the following types:

=over

=item C<Str>

=back

=cut

has awards => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<character>



Fictional person connected with a creative work.


A character should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has character => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<citation>



A citation or reference to another creative work, such as another
publication, web page, scholarly article, etc.


A citation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has citation => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<comment>



Comments, typically from users.


A comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=cut

has comment => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<comment_count>

C<commentCount>

The number of comments this CreativeWork (e.g. Article, Question or Answer)
has received. This is most applicable to works published in Web sites with
commenting system; additional comments may exist elsewhere.


A comment_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has comment_count => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<content_location>

C<contentLocation>

The location depicted or described in the content. For example, the
location in a photograph or painting.


A content_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has content_location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<content_rating>

C<contentRating>

Official rating of a piece of content&#x2014;for example,'MPAA PG-13'.


A content_rating should be one of the following types:

=over

=item C<Str>

=back

=cut

has content_rating => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contributor>



A secondary contributor to the CreativeWork or Event.


A contributor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has contributor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<copyright_holder>

C<copyrightHolder>

The party holding the legal copyright to the CreativeWork.


A copyright_holder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has copyright_holder => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<copyright_year>

C<copyrightYear>

The year during which the claimed copyright for the CreativeWork was first
asserted.


A copyright_year should be one of the following types:

=over

=item C<Num>

=back

=cut

has copyright_year => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<creator>



The creator/author of this CreativeWork. This is the same as the Author
property for CreativeWork.


A creator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has creator => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<date_created>

C<dateCreated>

The date on which the CreativeWork was created or the item was added to a
DataFeed.


A date_created should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_created => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<date_modified>

C<dateModified>

The date on which the CreativeWork was most recently modified or when the
item's entry was modified within a DataFeed.


A date_modified should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_modified => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<date_published>

C<datePublished>

Date of first broadcast/publication.


A date_published should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_published => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<discussion_url>

C<discussionUrl>

A link to the page containing the comments of the CreativeWork.


A discussion_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has discussion_url => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<editor>



Specifies the Person who edited the CreativeWork.


A editor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has editor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<educational_alignment>

C<educationalAlignment>

An alignment to an established educational framework.


A educational_alignment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AlignmentObject']>

=back

=cut

has educational_alignment => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<educational_use>

C<educationalUse>

The purpose of a work in the context of education; for example,
'assignment', 'group work'.


A educational_use should be one of the following types:

=over

=item C<Str>

=back

=cut

has educational_use => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<encoding>



A media object that encodes this CreativeWork. This property is a synonym
for associatedMedia.


A encoding should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=back

=cut

has encoding => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<encodings>



A media object that encodes this CreativeWork.


A encodings should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=back

=cut

has encodings => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<example_of_work>

C<exampleOfWork>

A creative work that this work is an
example/instance/realization/derivation of.


A example_of_work should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has example_of_work => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<expires>



=begin html

Date the content expires and is no longer useful or available. For example
a <a class="localLink" href="http://schema.org/VideoObject">VideoObject</a>
or <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> whose availability or
relevance is time-limited, or a <a class="localLink"
href="http://schema.org/ClaimReview">ClaimReview</a> fact check whose
publisher wants to indicate that it may no longer be relevant (or helpful
to highlight) after some date.

=end html


A expires should be one of the following types:

=over

=item C<Str>

=back

=cut

has expires => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<file_format>

C<fileFormat>

=begin html

Media type, typically MIME format (see <a
href="http://www.iana.org/assignments/media-types/media-types.xhtml">IANA
site</a>) of the content e.g. application/zip of a SoftwareApplication
binary. In cases where a CreativeWork has several media type
representations, 'encoding' can be used to indicate each MediaObject
alongside particular fileFormat information. Unregistered or niche file
formats can be indicated instead via the most appropriate URL, e.g.
defining Web page or a Wikipedia entry.

=end html


A file_format should be one of the following types:

=over

=item C<Str>

=back

=cut

has file_format => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has funder => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<genre>



Genre of the creative work, broadcast channel or group.


A genre should be one of the following types:

=over

=item C<Str>

=back

=cut

has genre => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<has_part>

C<hasPart>

Indicates a CreativeWork that is (in some sense) a part of this
CreativeWork.


A has_part should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has has_part => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<headline>



Headline of the article.


A headline should be one of the following types:

=over

=item C<Str>

=back

=cut

has headline => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<in_language>

C<inLanguage>

=begin html

The language of the content or performance or used in an action. Please use
one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.

=end html


A in_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has in_language => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<interaction_statistic>

C<interactionStatistic>

The number of interactions for the CreativeWork using the WebSite or
SoftwareApplication. The most specific child type of InteractionCounter
should be used.


A interaction_statistic should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::InteractionCounter']>

=back

=cut

has interaction_statistic => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<interactivity_type>

C<interactivityType>

The predominant mode of learning supported by the learning resource.
Acceptable values are 'active', 'expositive', or 'mixed'.


A interactivity_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has interactivity_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_accessible_for_free>

C<isAccessibleForFree>

A flag to signal that the item, event, or place is accessible for free.


A is_accessible_for_free should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_accessible_for_free => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_based_on>

C<isBasedOn>

A resource that was used in the creation of this resource. This term can be
repeated for multiple sources. For example,
http://example.com/great-multiplication-intro.html.


A is_based_on should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has is_based_on => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_based_on_url>

C<isBasedOnUrl>

A resource that was used in the creation of this resource. This term can be
repeated for multiple sources. For example,
http://example.com/great-multiplication-intro.html.


A is_based_on_url should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has is_based_on_url => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_family_friendly>

C<isFamilyFriendly>

Indicates whether this content is family friendly.


A is_family_friendly should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_family_friendly => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_part_of>

C<isPartOf>

Indicates a CreativeWork that this CreativeWork is (in some sense) part of.


A is_part_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has is_part_of => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<keywords>



Keywords or tags used to describe this content. Multiple entries in a
keywords list are typically delimited by commas.


A keywords should be one of the following types:

=over

=item C<Str>

=back

=cut

has keywords => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<learning_resource_type>

C<learningResourceType>

The predominant type or kind characterizing the learning resource. For
example, 'presentation', 'handout'.


A learning_resource_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has learning_resource_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<license>



A license document that applies to this content, typically indicated by
URL.


A license should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has license => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<location_created>

C<locationCreated>

The location where the CreativeWork was created, which may not be the same
as the location depicted in the CreativeWork.


A location_created should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has location_created => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<main_entity>

C<mainEntity>

Indicates the primary entity described in some page or other CreativeWork.


A main_entity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has main_entity => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<material>



A material that something is made from, e.g. leather, wool, cotton, paper.


A material should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has material => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<mentions>



Indicates that the CreativeWork contains a reference to, but is not
necessarily about a concept.


A mentions should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has mentions => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<position>



The position of an item in a series or sequence of items.


A position should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has position => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<producer>



The person or organization who produced the work (e.g. music album, movie,
tv/radio series etc.).


A producer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has producer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<publication>



A publication event associated with the item.


A publication should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PublicationEvent']>

=back

=cut

has publication => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<publisher>



The publisher of the creative work.


A publisher should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has publisher => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<publishing_principles>

C<publishingPrinciples>

=begin html

The publishingPrinciples property indicates (typically via <a
class="localLink" href="http://schema.org/URL">URL</a>) a document
describing the editorial principles of an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (or individual e.g.
a <a class="localLink" href="http://schema.org/Person">Person</a> writing a
blog) that relate to their activities as a publisher, e.g. ethics or
diversity policies. When applied to a <a class="localLink"
href="http://schema.org/CreativeWork">CreativeWork</a> (e.g. <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a>) the
principles are those of the party primarily responsible for the creation of
the <a class="localLink"
href="http://schema.org/CreativeWork">CreativeWork</a>.</p> <p>While such
policies are most typically expressed in natural language, sometimes
related information (e.g. indicating a <a class="localLink"
href="http://schema.org/funder">funder</a>) can be expressed using
schema.org terminology.

=end html


A publishing_principles should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has publishing_principles => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recorded_at>

C<recordedAt>

The Event where the CreativeWork was recorded. The CreativeWork may capture
all or part of the event.


A recorded_at should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has recorded_at => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<released_event>

C<releasedEvent>

The place and time the release was issued, expressed as a PublicationEvent.


A released_event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PublicationEvent']>

=back

=cut

has released_event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has review => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reviews>



Review of the item.


A reviews should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has reviews => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<schema_version>

C<schemaVersion>

Indicates (by URL or string) a particular version of a schema used in some
CreativeWork. For example, a document could declare a schemaVersion using
an URL such as http://schema.org/version/2.0/ if precise indication of
schema version was required by some application.


A schema_version should be one of the following types:

=over

=item C<Str>

=back

=cut

has schema_version => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<source_organization>

C<sourceOrganization>

The Organization on whose behalf the creator was working.


A source_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has source_organization => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<spatial_coverage>

C<spatialCoverage>

The spatialCoverage of a CreativeWork indicates the place(s) which are the
focus of the content. It is a subproperty of contentLocation intended
primarily for more technical and detailed materials. For example with a
Dataset, it indicates areas that the dataset describes: a dataset of New
York weather would have spatialCoverage which was the place: the state of
New York.


A spatial_coverage should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has spatial_coverage => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. e.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has sponsor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<temporal_coverage>

C<temporalCoverage>

=begin html

The temporalCoverage of a CreativeWork indicates the period that the
content applies to, i.e. that it describes, either as a DateTime or as a
textual string indicating a time period in <a
href="https://en.wikipedia.org/wiki/ISO_8601#Time_intervals">ISO 8601 time
interval format</a>. In the case of a Dataset it will typically indicate
the relevant time period in a precise notation (e.g. for a 2011 census
dataset, the year 2011 would be written "2011/2012"). Other forms of
content e.g. ScholarlyArticle, Book, TVSeries or TVEpisode may indicate
their temporalCoverage in broader terms - textually or via well-known URL.
Written works such as books may sometimes have precise temporal coverage
too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval
format format via "1939/1945".

=end html


A temporal_coverage should be one of the following types:

=over

=item C<Str>

=back

=cut

has temporal_coverage => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<text>



The textual content of this CreativeWork.


A text should be one of the following types:

=over

=item C<Str>

=back

=cut

has text => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<thumbnail_url>

C<thumbnailUrl>

A thumbnail image relevant to the Thing.


A thumbnail_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has thumbnail_url => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<time_required>

C<timeRequired>

Approximate or typical time it takes to work with or through this learning
resource for the typical intended target audience, e.g. 'P30M', 'P1H25M'.


A time_required should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has time_required => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<translator>



Organization or person who adapts a creative work to different languages,
regional differences and technical requirements of a target market, or that
translates during some event.


A translator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has translator => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<typical_age_range>

C<typicalAgeRange>

The typical expected age range, e.g. '7-9', '11-'.


A typical_age_range should be one of the following types:

=over

=item C<Str>

=back

=cut

has typical_age_range => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<version>



The version of the CreativeWork embodied by a specified resource.


A version should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has version => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<video>



An embedded video object.


A video should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::VideoObject']>

=back

=cut

has video => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<work_example>

C<workExample>

Example/instance/realization/derivation of the concept of this creative
work. eg. The paperback edition, first edition, or eBook.


A work_example should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has work_example => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CreativeWork' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'about' => $self->curry::_serializer('about'),
       'accessMode' => $self->curry::_serializer('access_mode'),
       'accessModeSufficient' => $self->curry::_serializer('access_mode_sufficient'),
       'accessibilityAPI' => $self->curry::_serializer('accessibility_api'),
       'accessibilityControl' => $self->curry::_serializer('accessibility_control'),
       'accessibilityFeature' => $self->curry::_serializer('accessibility_feature'),
       'accessibilityHazard' => $self->curry::_serializer('accessibility_hazard'),
       'accessibilitySummary' => $self->curry::_serializer('accessibility_summary'),
       'accountablePerson' => $self->curry::_serializer('accountable_person'),
       'aggregateRating' => $self->curry::_serializer('aggregate_rating'),
       'alternativeHeadline' => $self->curry::_serializer('alternative_headline'),
       'associatedMedia' => $self->curry::_serializer('associated_media'),
       'audience' => $self->curry::_serializer('audience'),
       'audio' => $self->curry::_serializer('audio'),
       'author' => $self->curry::_serializer('author'),
       'award' => $self->curry::_serializer('award'),
       'awards' => $self->curry::_serializer('awards'),
       'character' => $self->curry::_serializer('character'),
       'citation' => $self->curry::_serializer('citation'),
       'comment' => $self->curry::_serializer('comment'),
       'commentCount' => $self->curry::_serializer('comment_count'),
       'contentLocation' => $self->curry::_serializer('content_location'),
       'contentRating' => $self->curry::_serializer('content_rating'),
       'contributor' => $self->curry::_serializer('contributor'),
       'copyrightHolder' => $self->curry::_serializer('copyright_holder'),
       'copyrightYear' => $self->curry::_serializer('copyright_year'),
       'creator' => $self->curry::_serializer('creator'),
       'dateCreated' => $self->curry::_serializer('date_created'),
       'dateModified' => $self->curry::_serializer('date_modified'),
       'datePublished' => $self->curry::_serializer('date_published'),
       'discussionUrl' => $self->curry::_serializer('discussion_url'),
       'editor' => $self->curry::_serializer('editor'),
       'educationalAlignment' => $self->curry::_serializer('educational_alignment'),
       'educationalUse' => $self->curry::_serializer('educational_use'),
       'encoding' => $self->curry::_serializer('encoding'),
       'encodings' => $self->curry::_serializer('encodings'),
       'exampleOfWork' => $self->curry::_serializer('example_of_work'),
       'expires' => $self->curry::_serializer('expires'),
       'fileFormat' => $self->curry::_serializer('file_format'),
       'funder' => $self->curry::_serializer('funder'),
       'genre' => $self->curry::_serializer('genre'),
       'hasPart' => $self->curry::_serializer('has_part'),
       'headline' => $self->curry::_serializer('headline'),
       'inLanguage' => $self->curry::_serializer('in_language'),
       'interactionStatistic' => $self->curry::_serializer('interaction_statistic'),
       'interactivityType' => $self->curry::_serializer('interactivity_type'),
       'isAccessibleForFree' => $self->curry::_serializer('is_accessible_for_free'),
       'isBasedOn' => $self->curry::_serializer('is_based_on'),
       'isBasedOnUrl' => $self->curry::_serializer('is_based_on_url'),
       'isFamilyFriendly' => $self->curry::_serializer('is_family_friendly'),
       'isPartOf' => $self->curry::_serializer('is_part_of'),
       'keywords' => $self->curry::_serializer('keywords'),
       'learningResourceType' => $self->curry::_serializer('learning_resource_type'),
       'license' => $self->curry::_serializer('license'),
       'locationCreated' => $self->curry::_serializer('location_created'),
       'mainEntity' => $self->curry::_serializer('main_entity'),
       'material' => $self->curry::_serializer('material'),
       'mentions' => $self->curry::_serializer('mentions'),
       'offers' => $self->curry::_serializer('offers'),
       'position' => $self->curry::_serializer('position'),
       'producer' => $self->curry::_serializer('producer'),
       'provider' => $self->curry::_serializer('provider'),
       'publication' => $self->curry::_serializer('publication'),
       'publisher' => $self->curry::_serializer('publisher'),
       'publishingPrinciples' => $self->curry::_serializer('publishing_principles'),
       'recordedAt' => $self->curry::_serializer('recorded_at'),
       'releasedEvent' => $self->curry::_serializer('released_event'),
       'review' => $self->curry::_serializer('review'),
       'reviews' => $self->curry::_serializer('reviews'),
       'schemaVersion' => $self->curry::_serializer('schema_version'),
       'sourceOrganization' => $self->curry::_serializer('source_organization'),
       'spatialCoverage' => $self->curry::_serializer('spatial_coverage'),
       'sponsor' => $self->curry::_serializer('sponsor'),
       'temporalCoverage' => $self->curry::_serializer('temporal_coverage'),
       'text' => $self->curry::_serializer('text'),
       'thumbnailUrl' => $self->curry::_serializer('thumbnail_url'),
       'timeRequired' => $self->curry::_serializer('time_required'),
       'translator' => $self->curry::_serializer('translator'),
       'typicalAgeRange' => $self->curry::_serializer('typical_age_range'),
       'version' => $self->curry::_serializer('version'),
       'video' => $self->curry::_serializer('video'),
       'workExample' => $self->curry::_serializer('work_example'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;

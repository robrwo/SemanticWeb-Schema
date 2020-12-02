use utf8;

package SemanticWeb::Schema::SpecialAnnouncement;

# ABSTRACT: A SpecialAnnouncement combines a simple date-stamped textual information update with contextualized Web links and other structured data

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'SpecialAnnouncement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A SpecialAnnouncement combines a simple date-stamped textual information
update with contextualized Web links and other structured data. It
represents an information update made by a locally-oriented organization,
for example schools, pharmacies, healthcare providers, community groups,
police, local government. For work in progress guidelines on
Coronavirus-related markup see [this
doc](https://docs.google.com/document/d/14ikaGCKxo50rRM7nvKSlbUpjyIk2WMQd3I
kB1lItlrM/edit#). The motivating scenario for SpecialAnnouncement is the
[Coronavirus
pandemic](https://en.wikipedia.org/wiki/2019%E2%80%9320_coronavirus_pandemi
c), and the initial vocabulary is oriented to this urgent situation.
Schema.org expect to improve the markup iteratively as it is deployed and
as feedback emerges from use. In addition to our usual [Github
entry](https://github.com/schemaorg/schemaorg/issues/2490), feedback
comments can also be provided in [this
document](https://docs.google.com/document/d/1fpdFFxk8s87CWwACs53SGkYv3aafS
xz_DTtOQxMrBJQ/edit#). While this schema is designed to communicate urgent
crisis-related information, it is not the same as an emergency warning
technology like
[CAP](https://en.wikipedia.org/wiki/Common_Alerting_Protocol), although
there may be overlaps. The intent is to cover the kinds of everyday
practical information being posted to existing websites during an emergency
situation. Several kinds of information can be provided: We encourage the
provision of "name", "text", "datePosted", "expires" (if appropriate),
"category" and "url" as a simple baseline. It is important to provide a
value for "category" where possible, most ideally as a well known URL from
Wikipedia or Wikidata. In the case of the 2019-2020 Coronavirus pandemic,
this should be
"https://en.wikipedia.org/w/index.php?title=2019-20\_coronavirus\_pandemic"
or "https://www.wikidata.org/wiki/Q81068910". For many of the possible
properties, values can either be simple links or an inline description,
depending on whether a summary is available. For a link, provide just the
URL of the appropriate page as the property's value. For an inline
description, use a [[WebContent]] type, and provide the url as a property
of that, alongside at least a simple "[[text]]" summary of the page. It is
unlikely that a single SpecialAnnouncement will need all of the possible
properties simultaneously. We expect that in many cases the page referenced
might contain more specialized structured data, e.g. contact info,
[[openingHours]], [[Event]], [[FAQPage]] etc. By linking to those pages
from a [[SpecialAnnouncement]] you can help make it clearer that the events
are related to the situation (e.g. Coronavirus) indicated by the
[[category]] property of the [[SpecialAnnouncement]]. Many
[[SpecialAnnouncement]]s will relate to particular regions and to
identifiable local organizations. Use [[spatialCoverage]] for the region,
and [[announcementLocation]] to indicate specific [[LocalBusiness]]es and
[[CivicStructures]]. If the announcement affects both a particular region
and a specific location (for example, a library closure that serves an
entire region), use both [[spatialCoverage]] and [[announcementLocation]].
The [[about]] property can be used to indicate entities that are the focus
of the announcement. We now recommend using [[about]] only for representing
non-location entities (e.g. a [[Course]] or a [[RadioStation]]). For
places, use [[announcementLocation]] and [[spatialCoverage]]. Consumers of
this markup should be aware that the initial design encouraged the use of
/about for locations too. The basic content of [[SpecialAnnouncement]] is
similar to that of an [RSS](https://en.wikipedia.org/wiki/RSS) or
[Atom](https://en.wikipedia.org/wiki/Atom_(Web_standard)) feed. For
publishers without such feeds, basic feed-like information can be shared by
posting [[SpecialAnnouncement]] updates in a page, e.g. using JSON-LD. For
sites with Atom/RSS functionality, you can point to a feed with the
[[webFeed]] property. This can be a simple URL, or an inline [[DataFeed]]
object, with [[encodingFormat]] providing media type information e.g.
"application/rss+xml" or "application/atom+xml". 




=head1 ATTRIBUTES


=head2 C<announcement_location>

C<announcementLocation>

Indicates a specific [[CivicStructure]] or [[LocalBusiness]] associated
with the SpecialAnnouncement. For example, a specific testing facility or
business with special opening hours. For a larger geographic region like a
quarantine of an entire region, use [[spatialCoverage]].


A announcement_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CivicStructure']>

=item C<InstanceOf['SemanticWeb::Schema::LocalBusiness']>

=back

=head2 C<_has_announcement_location>

A predicate for the L</announcement_location> attribute.

=cut

has announcement_location => (
    is        => 'rw',
    predicate => '_has_announcement_location',
    json_ld   => 'announcementLocation',
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);


=head2 C<date_posted>

C<datePosted>

Publication date of an online listing.


A date_posted should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_date_posted>

A predicate for the L</date_posted> attribute.

=cut

has date_posted => (
    is        => 'rw',
    predicate => '_has_date_posted',
    json_ld   => 'datePosted',
);


=head2 C<disease_prevention_info>

C<diseasePreventionInfo>

Information about disease prevention.


A disease_prevention_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_disease_prevention_info>

A predicate for the L</disease_prevention_info> attribute.

=cut

has disease_prevention_info => (
    is        => 'rw',
    predicate => '_has_disease_prevention_info',
    json_ld   => 'diseasePreventionInfo',
);


=head2 C<disease_spread_statistics>

C<diseaseSpreadStatistics>

Statistical information about the spread of a disease, either as
[[WebContent]], or described directly as a [[Dataset]], or the specific
[[Observation]]s in the dataset. When a [[WebContent]] URL is provided, the
page indicated might also contain more such markup.


A disease_spread_statistics should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=item C<InstanceOf['SemanticWeb::Schema::Observation']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_disease_spread_statistics>

A predicate for the L</disease_spread_statistics> attribute.

=cut

has disease_spread_statistics => (
    is        => 'rw',
    predicate => '_has_disease_spread_statistics',
    json_ld   => 'diseaseSpreadStatistics',
);


=head2 C<getting_tested_info>

C<gettingTestedInfo>

Information about getting tested (for a [[MedicalCondition]]), e.g. in the
context of a pandemic.


A getting_tested_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_getting_tested_info>

A predicate for the L</getting_tested_info> attribute.

=cut

has getting_tested_info => (
    is        => 'rw',
    predicate => '_has_getting_tested_info',
    json_ld   => 'gettingTestedInfo',
);


=head2 C<government_benefits_info>

C<governmentBenefitsInfo>

governmentBenefitsInfo provides information about government benefits
associated with a SpecialAnnouncement.


A government_benefits_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GovernmentService']>

=back

=head2 C<_has_government_benefits_info>

A predicate for the L</government_benefits_info> attribute.

=cut

has government_benefits_info => (
    is        => 'rw',
    predicate => '_has_government_benefits_info',
    json_ld   => 'governmentBenefitsInfo',
);


=head2 C<news_updates_and_guidelines>

C<newsUpdatesAndGuidelines>

Indicates a page with news updates and guidelines. This could often be (but
is not required to be) the main page containing [[SpecialAnnouncement]]
markup on a site.


A news_updates_and_guidelines should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_news_updates_and_guidelines>

A predicate for the L</news_updates_and_guidelines> attribute.

=cut

has news_updates_and_guidelines => (
    is        => 'rw',
    predicate => '_has_news_updates_and_guidelines',
    json_ld   => 'newsUpdatesAndGuidelines',
);


=head2 C<public_transport_closures_info>

C<publicTransportClosuresInfo>

Information about public transport closures.


A public_transport_closures_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_public_transport_closures_info>

A predicate for the L</public_transport_closures_info> attribute.

=cut

has public_transport_closures_info => (
    is        => 'rw',
    predicate => '_has_public_transport_closures_info',
    json_ld   => 'publicTransportClosuresInfo',
);


=head2 C<quarantine_guidelines>

C<quarantineGuidelines>

Guidelines about quarantine rules, e.g. in the context of a pandemic.


A quarantine_guidelines should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_quarantine_guidelines>

A predicate for the L</quarantine_guidelines> attribute.

=cut

has quarantine_guidelines => (
    is        => 'rw',
    predicate => '_has_quarantine_guidelines',
    json_ld   => 'quarantineGuidelines',
);


=head2 C<school_closures_info>

C<schoolClosuresInfo>

Information about school closures.


A school_closures_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_school_closures_info>

A predicate for the L</school_closures_info> attribute.

=cut

has school_closures_info => (
    is        => 'rw',
    predicate => '_has_school_closures_info',
    json_ld   => 'schoolClosuresInfo',
);


=head2 C<travel_bans>

C<travelBans>

Information about travel bans, e.g. in the context of a pandemic.


A travel_bans should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_travel_bans>

A predicate for the L</travel_bans> attribute.

=cut

has travel_bans => (
    is        => 'rw',
    predicate => '_has_travel_bans',
    json_ld   => 'travelBans',
);


=head2 C<web_feed>

C<webFeed>

The URL for a feed, e.g. associated with a podcast series, blog, or series
of date-stamped updates. This is usually RSS or Atom.


A web_feed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataFeed']>

=item C<Str>

=back

=head2 C<_has_web_feed>

A predicate for the L</web_feed> attribute.

=cut

has web_feed => (
    is        => 'rw',
    predicate => '_has_web_feed',
    json_ld   => 'webFeed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;

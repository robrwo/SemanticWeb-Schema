use utf8;

package SemanticWeb::Schema::Organization;

# ABSTRACT: An organization such as a school

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Organization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

An organization such as a school, NGO, corporation, club, etc.




=head1 ATTRIBUTES


=head2 C<actionable_feedback_policy>

C<actionableFeedbackPolicy>

=begin html

For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a> or
other news-related <a class="localLink"
href="http://schema.org/Organization">Organization</a>, a statement about
public engagement activities (for news media, the newsroomâs), including
involving the public - digitally or otherwise -- in coverage decisions,
reporting and activities after publication.

=end html


A actionable_feedback_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has actionable_feedback_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionableFeedbackPolicy',
);


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'address',
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
    json_ld   => 'aggregateRating',
);


=head2 C<alumni>



Alumni of an organization.


A alumni should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has alumni => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'alumni',
);


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'areaServed',
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
    json_ld   => 'award',
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
    json_ld   => 'awards',
);


=head2 C<brand>



The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.


A brand should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Brand']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has brand => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'brand',
);


=head2 C<contact_point>

C<contactPoint>

A contact point for a person or organization.


A contact_point should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=cut

has contact_point => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contactPoint',
);


=head2 C<contact_points>

C<contactPoints>

A contact point for a person or organization.


A contact_points should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=cut

has contact_points => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contactPoints',
);


=head2 C<corrections_policy>

C<correctionsPolicy>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (e.g. <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a statement describing (in news media, the newsroomâs) disclosure and
correction policy for errors.

=end html


A corrections_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has corrections_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'correctionsPolicy',
);


=head2 C<department>



A relationship between an organization and a department of that
organization, also described as an organization (allowing different urls,
logos, opening hours). For example: a store with a pharmacy, or a bakery
with a cafe.


A department should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has department => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'department',
);


=head2 C<dissolution_date>

C<dissolutionDate>

The date that this organization was dissolved.


A dissolution_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has dissolution_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dissolutionDate',
);


=head2 C<diversity_policy>

C<diversityPolicy>

=begin html

Statement on diversity policy by an <a class="localLink"
href="http://schema.org/Organization">Organization</a> e.g. a <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>.
For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>, a
statement describing the newsroomâs diversity policy on both staffing and
sources, typically providing staffing data.

=end html


A diversity_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has diversity_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'diversityPolicy',
);


=head2 C<diversity_staffing_report>

C<diversityStaffingReport>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (often but not
necessarily a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a report on staffing diversity issues. In a news context this might be for
example ASNE or RTDNA (US) reports, or self-reported.

=end html


A diversity_staffing_report should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Article']>

=item C<Str>

=back

=cut

has diversity_staffing_report => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'diversityStaffingReport',
);


=head2 C<duns>



The Dun &amp; Bradstreet DUNS number for identifying an organization or
business person.


A duns should be one of the following types:

=over

=item C<Str>

=back

=cut

has duns => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duns',
);


=head2 C<email>



Email address.


A email should be one of the following types:

=over

=item C<Str>

=back

=cut

has email => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'email',
);


=head2 C<employee>



Someone working for this organization.


A employee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has employee => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'employee',
);


=head2 C<employees>



People working for this organization.


A employees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has employees => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'employees',
);


=head2 C<ethics_policy>

C<ethicsPolicy>

=begin html

Statement about ethics policy, e.g. of a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>
regarding journalistic and publishing practices, or of a <a
class="localLink" href="http://schema.org/Restaurant">Restaurant</a>, a
page describing food source policies. In the case of a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>,
an ethicsPolicy is typically a statement describing the personal,
organizational, and corporate standards of behavior expected by the
organization.

=end html


A ethics_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has ethics_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ethicsPolicy',
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'event',
);


=head2 C<events>



Upcoming or past events associated with this place or organization.


A events should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has events => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'events',
);


=head2 C<fax_number>

C<faxNumber>

The fax number.


A fax_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has fax_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'faxNumber',
);


=head2 C<founder>



A person who founded this organization.


A founder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has founder => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'founder',
);


=head2 C<founders>



A person who founded this organization.


A founders should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has founders => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'founders',
);


=head2 C<founding_date>

C<foundingDate>

The date that this organization was founded.


A founding_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has founding_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'foundingDate',
);


=head2 C<founding_location>

C<foundingLocation>

The place where the Organization was founded.


A founding_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has founding_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'foundingLocation',
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has funder => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'funder',
);


=head2 C<global_location_number>

C<globalLocationNumber>

=begin html

The <a href="http://www.gs1.org/gln">Global Location Number</a> (GLN,
sometimes also referred to as International Location Number or ILN) of the
respective organization, person, or place. The GLN is a 13-digit number
used to identify parties and physical locations.

=end html


A global_location_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has global_location_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'globalLocationNumber',
);


=head2 C<has_credential>

C<hasCredential>

A credential awarded to the Person or Organization.


A has_credential should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=back

=cut

has has_credential => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasCredential',
);


=head2 C<has_offer_catalog>

C<hasOfferCatalog>

Indicates an OfferCatalog listing for this Organization, Person, or
Service.


A has_offer_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferCatalog']>

=back

=cut

has has_offer_catalog => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasOfferCatalog',
);


=head2 C<has_pos>

C<hasPOS>

Points-of-Sales operated by the organization or person.


A has_pos should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has has_pos => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasPOS',
);


=head2 C<has_product_return_policy>

C<hasProductReturnPolicy>

Indicates a ProductReturnPolicy that may be applicable.


A has_product_return_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductReturnPolicy']>

=back

=cut

has has_product_return_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasProductReturnPolicy',
);


=head2 C<isic_v4>

C<isicV4>

The International Standard of Industrial Classification of All Economic
Activities (ISIC), Revision 4 code for a particular organization, business
person, or place.


A isic_v4 should be one of the following types:

=over

=item C<Str>

=back

=cut

has isic_v4 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isicV4',
);


=head2 C<knows_about>

C<knowsAbout>

=begin html

Of a <a class="localLink" href="http://schema.org/Person">Person</a>, and
less typically of an <a class="localLink"
href="http://schema.org/Organization">Organization</a>, to indicate a topic
that is known about - suggesting possible expertise but not implying it. We
do not distinguish skill levels here, or relate this to educational
content, events, objectives or <a class="localLink"
href="http://schema.org/JobPosting">JobPosting</a> descriptions.

=end html


A knows_about should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=cut

has knows_about => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'knowsAbout',
);


=head2 C<knows_language>

C<knowsLanguage>

=begin html

Of a <a class="localLink" href="http://schema.org/Person">Person</a>, and
less typically of an <a class="localLink"
href="http://schema.org/Organization">Organization</a>, to indicate a known
language. We do not distinguish skill levels or
reading/writing/speaking/signing here. Use language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>.

=end html


A knows_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has knows_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'knowsLanguage',
);


=head2 C<legal_name>

C<legalName>

The official name of the organization, e.g. the registered company name.


A legal_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has legal_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'legalName',
);


=head2 C<lei_code>

C<leiCode>

An organization identifier that uniquely identifies a legal entity as
defined in ISO 17442.


A lei_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has lei_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'leiCode',
);


=head2 C<location>



The location of for example where the event is happening, an organization
is located, or where an action takes place.


A location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=cut

has location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'location',
);


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'logo',
);


=head2 C<makes_offer>

C<makesOffer>

A pointer to products or services offered by the organization or person.


A makes_offer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has makes_offer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'makesOffer',
);


=head2 C<member>



A member of an Organization or a ProgramMembership. Organizations can be
members of organizations; ProgramMembership is typically for individuals.


A member should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has member => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'member',
);


=head2 C<member_of>

C<memberOf>

An Organization (or ProgramMembership) to which this Person or Organization
belongs.


A member_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::ProgramMembership']>

=back

=cut

has member_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'memberOf',
);


=head2 C<members>



A member of this organization.


A members should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has members => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'members',
);


=head2 C<naics>



The North American Industry Classification System (NAICS) code for a
particular organization or business person.


A naics should be one of the following types:

=over

=item C<Str>

=back

=cut

has naics => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'naics',
);


=head2 C<number_of_employees>

C<numberOfEmployees>

The number of employees in an organization e.g. business.


A number_of_employees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has number_of_employees => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfEmployees',
);


=head2 C<ownership_funding_info>

C<ownershipFundingInfo>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (often but not
necessarily a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a description of organizational ownership structure; funding and grants. In
a news/media setting, this is with particular reference to editorial
independence. Note that the <a class="localLink"
href="http://schema.org/funder">funder</a> is also available and can be
used to make basic funder information machine-readable.

=end html


A ownership_funding_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AboutPage']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has ownership_funding_info => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ownershipFundingInfo',
);


=head2 C<owns>



Products owned by the organization or person.


A owns should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OwnershipInfo']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has owns => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'owns',
);


=head2 C<parent_organization>

C<parentOrganization>

=begin html

The larger organization that this organization is a <a class="localLink"
href="http://schema.org/subOrganization">subOrganization</a> of, if any.

=end html


A parent_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has parent_organization => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'parentOrganization',
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
href="http://schema.org/CreativeWork">CreativeWork</a>.<br/><br/> While
such policies are most typically expressed in natural language, sometimes
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
    json_ld   => 'publishingPrinciples',
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
    json_ld   => 'review',
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
    json_ld   => 'reviews',
);


=head2 C<seeks>



A pointer to products or services sought by the organization or person
(demand).


A seeks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Demand']>

=back

=cut

has seeks => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seeks',
);


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceArea',
);


=head2 C<slogan>



A slogan or motto associated with the item.


A slogan should be one of the following types:

=over

=item C<Str>

=back

=cut

has slogan => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'slogan',
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
    json_ld   => 'sponsor',
);


=head2 C<sub_organization>

C<subOrganization>

A relationship between two organizations where the first includes the
second, e.g., as a subsidiary. See also: the more specific 'department'
property.


A sub_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has sub_organization => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subOrganization',
);


=head2 C<tax_id>

C<taxID>

The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
or the CIF/NIF in Spain.


A tax_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has tax_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'taxID',
);


=head2 C<telephone>



The telephone number.


A telephone should be one of the following types:

=over

=item C<Str>

=back

=cut

has telephone => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'telephone',
);


=head2 C<unnamed_sources_policy>

C<unnamedSourcesPolicy>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (typically a <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a statement about policy on use of unnamed sources and the decision process
required.

=end html


A unnamed_sources_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has unnamed_sources_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unnamedSourcesPolicy',
);


=head2 C<vat_id>

C<vatID>

The Value-added Tax ID of the organization or person.


A vat_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has vat_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'vatID',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;

package SemanticWeb::Schema::Person;

# ABSTRACT: A person (alive

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A person (alive, dead, undead, or fictional).




=head1 ATTRIBUTES


=head2 C<additional_name>

C<additionalName>

An additional name for a Person, can be used for a middle name.


A additional_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has additional_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalName',
    json_ld_serializer => \&_serialize_additional_name,
);

sub _serialize_additional_name { $_[0]->_serializer('additional_name') }


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'address',
    json_ld_serializer => \&_serialize_address,
);

sub _serialize_address { $_[0]->_serializer('address') }


=head2 C<affiliation>



An organization that this person is affiliated with. For example, a
school/university, a club, or a team.


A affiliation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has affiliation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'affiliation',
    json_ld_serializer => \&_serialize_affiliation,
);

sub _serialize_affiliation { $_[0]->_serializer('affiliation') }


=head2 C<alumni_of>

C<alumniOf>

An organization that the person is an alumni of.


A alumni_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::EducationalOrganization']>

=back

=cut

has alumni_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'alumniOf',
    json_ld_serializer => \&_serialize_alumni_of,
);

sub _serialize_alumni_of { $_[0]->_serializer('alumni_of') }


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
    json_ld_serializer => \&_serialize_award,
);

sub _serialize_award { $_[0]->_serializer('award') }


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
    json_ld_serializer => \&_serialize_awards,
);

sub _serialize_awards { $_[0]->_serializer('awards') }


=head2 C<birth_date>

C<birthDate>

Date of birth.


A birth_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has birth_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'birthDate',
    json_ld_serializer => \&_serialize_birth_date,
);

sub _serialize_birth_date { $_[0]->_serializer('birth_date') }


=head2 C<birth_place>

C<birthPlace>

The place where the person was born.


A birth_place should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has birth_place => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'birthPlace',
    json_ld_serializer => \&_serialize_birth_place,
);

sub _serialize_birth_place { $_[0]->_serializer('birth_place') }


=head2 C<brand>



The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.


A brand should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Brand']>

=back

=cut

has brand => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'brand',
    json_ld_serializer => \&_serialize_brand,
);

sub _serialize_brand { $_[0]->_serializer('brand') }


=head2 C<children>



A child of the person.


A children should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has children => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'children',
    json_ld_serializer => \&_serialize_children,
);

sub _serialize_children { $_[0]->_serializer('children') }


=head2 C<colleague>



A colleague of the person.


A colleague should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has colleague => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'colleague',
    json_ld_serializer => \&_serialize_colleague,
);

sub _serialize_colleague { $_[0]->_serializer('colleague') }


=head2 C<colleagues>



A colleague of the person.


A colleagues should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has colleagues => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'colleagues',
    json_ld_serializer => \&_serialize_colleagues,
);

sub _serialize_colleagues { $_[0]->_serializer('colleagues') }


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
    json_ld_serializer => \&_serialize_contact_point,
);

sub _serialize_contact_point { $_[0]->_serializer('contact_point') }


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
    json_ld_serializer => \&_serialize_contact_points,
);

sub _serialize_contact_points { $_[0]->_serializer('contact_points') }


=head2 C<death_date>

C<deathDate>

Date of death.


A death_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has death_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deathDate',
    json_ld_serializer => \&_serialize_death_date,
);

sub _serialize_death_date { $_[0]->_serializer('death_date') }


=head2 C<death_place>

C<deathPlace>

The place where the person died.


A death_place should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has death_place => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deathPlace',
    json_ld_serializer => \&_serialize_death_place,
);

sub _serialize_death_place { $_[0]->_serializer('death_place') }


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
    json_ld_serializer => \&_serialize_duns,
);

sub _serialize_duns { $_[0]->_serializer('duns') }


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
    json_ld_serializer => \&_serialize_email,
);

sub _serialize_email { $_[0]->_serializer('email') }


=head2 C<family_name>

C<familyName>

Family name. In the U.S., the last name of an Person. This can be used
along with givenName instead of the name property.


A family_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has family_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'familyName',
    json_ld_serializer => \&_serialize_family_name,
);

sub _serialize_family_name { $_[0]->_serializer('family_name') }


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
    json_ld_serializer => \&_serialize_fax_number,
);

sub _serialize_fax_number { $_[0]->_serializer('fax_number') }


=head2 C<follows>



The most generic uni-directional social relation.


A follows should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has follows => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'follows',
    json_ld_serializer => \&_serialize_follows,
);

sub _serialize_follows { $_[0]->_serializer('follows') }


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
    json_ld   => 'funder',
    json_ld_serializer => \&_serialize_funder,
);

sub _serialize_funder { $_[0]->_serializer('funder') }


=head2 C<gender>



Gender of the person. While http://schema.org/Male and
http://schema.org/Female may be used, text strings are also acceptable for
people who do not identify as a binary gender.


A gender should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::GenderType']>

=back

=cut

has gender => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gender',
    json_ld_serializer => \&_serialize_gender,
);

sub _serialize_gender { $_[0]->_serializer('gender') }


=head2 C<given_name>

C<givenName>

Given name. In the U.S., the first name of a Person. This can be used along
with familyName instead of the name property.


A given_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has given_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'givenName',
    json_ld_serializer => \&_serialize_given_name,
);

sub _serialize_given_name { $_[0]->_serializer('given_name') }


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
    json_ld_serializer => \&_serialize_global_location_number,
);

sub _serialize_global_location_number { $_[0]->_serializer('global_location_number') }


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
    json_ld_serializer => \&_serialize_has_offer_catalog,
);

sub _serialize_has_offer_catalog { $_[0]->_serializer('has_offer_catalog') }


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
    json_ld_serializer => \&_serialize_has_pos,
);

sub _serialize_has_pos { $_[0]->_serializer('has_pos') }


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has height => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'height',
    json_ld_serializer => \&_serialize_height,
);

sub _serialize_height { $_[0]->_serializer('height') }


=head2 C<home_location>

C<homeLocation>

A contact location for a person's residence.


A home_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=cut

has home_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'homeLocation',
    json_ld_serializer => \&_serialize_home_location,
);

sub _serialize_home_location { $_[0]->_serializer('home_location') }


=head2 C<honorific_prefix>

C<honorificPrefix>

An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.


A honorific_prefix should be one of the following types:

=over

=item C<Str>

=back

=cut

has honorific_prefix => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'honorificPrefix',
    json_ld_serializer => \&_serialize_honorific_prefix,
);

sub _serialize_honorific_prefix { $_[0]->_serializer('honorific_prefix') }


=head2 C<honorific_suffix>

C<honorificSuffix>

An honorific suffix preceding a Person's name such as M.D. /PhD/MSCSW.


A honorific_suffix should be one of the following types:

=over

=item C<Str>

=back

=cut

has honorific_suffix => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'honorificSuffix',
    json_ld_serializer => \&_serialize_honorific_suffix,
);

sub _serialize_honorific_suffix { $_[0]->_serializer('honorific_suffix') }


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
    json_ld_serializer => \&_serialize_isic_v4,
);

sub _serialize_isic_v4 { $_[0]->_serializer('isic_v4') }


=head2 C<job_title>

C<jobTitle>

The job title of the person (for example, Financial Manager).


A job_title should be one of the following types:

=over

=item C<Str>

=back

=cut

has job_title => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'jobTitle',
    json_ld_serializer => \&_serialize_job_title,
);

sub _serialize_job_title { $_[0]->_serializer('job_title') }


=head2 C<knows>



The most generic bi-directional social/work relation.


A knows should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has knows => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'knows',
    json_ld_serializer => \&_serialize_knows,
);

sub _serialize_knows { $_[0]->_serializer('knows') }


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
    json_ld_serializer => \&_serialize_makes_offer,
);

sub _serialize_makes_offer { $_[0]->_serializer('makes_offer') }


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
    json_ld_serializer => \&_serialize_member_of,
);

sub _serialize_member_of { $_[0]->_serializer('member_of') }


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
    json_ld_serializer => \&_serialize_naics,
);

sub _serialize_naics { $_[0]->_serializer('naics') }


=head2 C<nationality>



Nationality of the person.


A nationality should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=cut

has nationality => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nationality',
    json_ld_serializer => \&_serialize_nationality,
);

sub _serialize_nationality { $_[0]->_serializer('nationality') }


=head2 C<net_worth>

C<netWorth>

The total financial value of the person as calculated by subtracting assets
from liabilities.


A net_worth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has net_worth => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'netWorth',
    json_ld_serializer => \&_serialize_net_worth,
);

sub _serialize_net_worth { $_[0]->_serializer('net_worth') }


=head2 C<owns>



Products owned by the organization or person.


A owns should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::OwnershipInfo']>

=back

=cut

has owns => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'owns',
    json_ld_serializer => \&_serialize_owns,
);

sub _serialize_owns { $_[0]->_serializer('owns') }


=head2 C<parent>



A parent of this person.


A parent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has parent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'parent',
    json_ld_serializer => \&_serialize_parent,
);

sub _serialize_parent { $_[0]->_serializer('parent') }


=head2 C<parents>



A parents of the person.


A parents should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has parents => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'parents',
    json_ld_serializer => \&_serialize_parents,
);

sub _serialize_parents { $_[0]->_serializer('parents') }


=head2 C<performer_in>

C<performerIn>

Event that this person is a performer or participant in.


A performer_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has performer_in => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'performerIn',
    json_ld_serializer => \&_serialize_performer_in,
);

sub _serialize_performer_in { $_[0]->_serializer('performer_in') }


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
    json_ld   => 'publishingPrinciples',
    json_ld_serializer => \&_serialize_publishing_principles,
);

sub _serialize_publishing_principles { $_[0]->_serializer('publishing_principles') }


=head2 C<related_to>

C<relatedTo>

The most generic familial relation.


A related_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has related_to => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'relatedTo',
    json_ld_serializer => \&_serialize_related_to,
);

sub _serialize_related_to { $_[0]->_serializer('related_to') }


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
    json_ld_serializer => \&_serialize_seeks,
);

sub _serialize_seeks { $_[0]->_serializer('seeks') }


=head2 C<sibling>



A sibling of the person.


A sibling should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has sibling => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sibling',
    json_ld_serializer => \&_serialize_sibling,
);

sub _serialize_sibling { $_[0]->_serializer('sibling') }


=head2 C<siblings>



A sibling of the person.


A siblings should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has siblings => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'siblings',
    json_ld_serializer => \&_serialize_siblings,
);

sub _serialize_siblings { $_[0]->_serializer('siblings') }


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
    json_ld_serializer => \&_serialize_sponsor,
);

sub _serialize_sponsor { $_[0]->_serializer('sponsor') }


=head2 C<spouse>



The person's spouse.


A spouse should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has spouse => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'spouse',
    json_ld_serializer => \&_serialize_spouse,
);

sub _serialize_spouse { $_[0]->_serializer('spouse') }


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
    json_ld_serializer => \&_serialize_tax_id,
);

sub _serialize_tax_id { $_[0]->_serializer('tax_id') }


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
    json_ld_serializer => \&_serialize_telephone,
);

sub _serialize_telephone { $_[0]->_serializer('telephone') }


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
    json_ld_serializer => \&_serialize_vat_id,
);

sub _serialize_vat_id { $_[0]->_serializer('vat_id') }


=head2 C<weight>



The weight of the product or person.


A weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has weight => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'weight',
    json_ld_serializer => \&_serialize_weight,
);

sub _serialize_weight { $_[0]->_serializer('weight') }


=head2 C<work_location>

C<workLocation>

A contact location for a person's place of work.


A work_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has work_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workLocation',
    json_ld_serializer => \&_serialize_work_location,
);

sub _serialize_work_location { $_[0]->_serializer('work_location') }


=head2 C<works_for>

C<worksFor>

Organizations that the person works for.


A works_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has works_for => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'worksFor',
    json_ld_serializer => \&_serialize_works_for,
);

sub _serialize_works_for { $_[0]->_serializer('works_for') }




around json_ld_type => sub { return 'Person' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'additionalName' => \&_serialize_additional_name,
       'address' => \&_serialize_address,
       'affiliation' => \&_serialize_affiliation,
       'alumniOf' => \&_serialize_alumni_of,
       'award' => \&_serialize_award,
       'awards' => \&_serialize_awards,
       'birthDate' => \&_serialize_birth_date,
       'birthPlace' => \&_serialize_birth_place,
       'brand' => \&_serialize_brand,
       'children' => \&_serialize_children,
       'colleague' => \&_serialize_colleague,
       'colleagues' => \&_serialize_colleagues,
       'contactPoint' => \&_serialize_contact_point,
       'contactPoints' => \&_serialize_contact_points,
       'deathDate' => \&_serialize_death_date,
       'deathPlace' => \&_serialize_death_place,
       'duns' => \&_serialize_duns,
       'email' => \&_serialize_email,
       'familyName' => \&_serialize_family_name,
       'faxNumber' => \&_serialize_fax_number,
       'follows' => \&_serialize_follows,
       'funder' => \&_serialize_funder,
       'gender' => \&_serialize_gender,
       'givenName' => \&_serialize_given_name,
       'globalLocationNumber' => \&_serialize_global_location_number,
       'hasOfferCatalog' => \&_serialize_has_offer_catalog,
       'hasPOS' => \&_serialize_has_pos,
       'height' => \&_serialize_height,
       'homeLocation' => \&_serialize_home_location,
       'honorificPrefix' => \&_serialize_honorific_prefix,
       'honorificSuffix' => \&_serialize_honorific_suffix,
       'isicV4' => \&_serialize_isic_v4,
       'jobTitle' => \&_serialize_job_title,
       'knows' => \&_serialize_knows,
       'makesOffer' => \&_serialize_makes_offer,
       'memberOf' => \&_serialize_member_of,
       'naics' => \&_serialize_naics,
       'nationality' => \&_serialize_nationality,
       'netWorth' => \&_serialize_net_worth,
       'owns' => \&_serialize_owns,
       'parent' => \&_serialize_parent,
       'parents' => \&_serialize_parents,
       'performerIn' => \&_serialize_performer_in,
       'publishingPrinciples' => \&_serialize_publishing_principles,
       'relatedTo' => \&_serialize_related_to,
       'seeks' => \&_serialize_seeks,
       'sibling' => \&_serialize_sibling,
       'siblings' => \&_serialize_siblings,
       'sponsor' => \&_serialize_sponsor,
       'spouse' => \&_serialize_spouse,
       'taxID' => \&_serialize_tax_id,
       'telephone' => \&_serialize_telephone,
       'vatID' => \&_serialize_vat_id,
       'weight' => \&_serialize_weight,
       'workLocation' => \&_serialize_work_location,
       'worksFor' => \&_serialize_works_for,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;

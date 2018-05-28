package SemanticWeb::Schema::Organization;

# ABSTRACT: An organization such as a school

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An organization such as a school, NGO, corporation, club, etc.




=head1 ATTRIBUTES


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
    json_ld_serializer => \&_serialize_aggregate_rating,
);

sub _serialize_aggregate_rating { $_[0]->_serializer('aggregate_rating') }


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
    json_ld_serializer => \&_serialize_alumni,
);

sub _serialize_alumni { $_[0]->_serializer('alumni') }


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'areaServed',
    json_ld_serializer => \&_serialize_area_served,
);

sub _serialize_area_served { $_[0]->_serializer('area_served') }


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
    json_ld_serializer => \&_serialize_department,
);

sub _serialize_department { $_[0]->_serializer('department') }


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
    json_ld_serializer => \&_serialize_dissolution_date,
);

sub _serialize_dissolution_date { $_[0]->_serializer('dissolution_date') }


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
    json_ld_serializer => \&_serialize_employee,
);

sub _serialize_employee { $_[0]->_serializer('employee') }


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
    json_ld_serializer => \&_serialize_employees,
);

sub _serialize_employees { $_[0]->_serializer('employees') }


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
    json_ld_serializer => \&_serialize_event,
);

sub _serialize_event { $_[0]->_serializer('event') }


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
    json_ld_serializer => \&_serialize_events,
);

sub _serialize_events { $_[0]->_serializer('events') }


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
    json_ld_serializer => \&_serialize_founder,
);

sub _serialize_founder { $_[0]->_serializer('founder') }


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
    json_ld_serializer => \&_serialize_founders,
);

sub _serialize_founders { $_[0]->_serializer('founders') }


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
    json_ld_serializer => \&_serialize_founding_date,
);

sub _serialize_founding_date { $_[0]->_serializer('founding_date') }


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
    json_ld_serializer => \&_serialize_founding_location,
);

sub _serialize_founding_location { $_[0]->_serializer('founding_location') }


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
    json_ld_serializer => \&_serialize_legal_name,
);

sub _serialize_legal_name { $_[0]->_serializer('legal_name') }


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
    json_ld_serializer => \&_serialize_lei_code,
);

sub _serialize_lei_code { $_[0]->_serializer('lei_code') }


=head2 C<location>



The location of for example where the event is happening, an organization
is located, or where an action takes place.


A location should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'location',
    json_ld_serializer => \&_serialize_location,
);

sub _serialize_location { $_[0]->_serializer('location') }


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'logo',
    json_ld_serializer => \&_serialize_logo,
);

sub _serialize_logo { $_[0]->_serializer('logo') }


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
    json_ld_serializer => \&_serialize_member,
);

sub _serialize_member { $_[0]->_serializer('member') }


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
    json_ld_serializer => \&_serialize_members,
);

sub _serialize_members { $_[0]->_serializer('members') }


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
    json_ld_serializer => \&_serialize_number_of_employees,
);

sub _serialize_number_of_employees { $_[0]->_serializer('number_of_employees') }


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
    json_ld_serializer => \&_serialize_parent_organization,
);

sub _serialize_parent_organization { $_[0]->_serializer('parent_organization') }


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
    json_ld_serializer => \&_serialize_review,
);

sub _serialize_review { $_[0]->_serializer('review') }


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
    json_ld_serializer => \&_serialize_reviews,
);

sub _serialize_reviews { $_[0]->_serializer('reviews') }


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


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceArea',
    json_ld_serializer => \&_serialize_service_area,
);

sub _serialize_service_area { $_[0]->_serializer('service_area') }


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
    json_ld_serializer => \&_serialize_sub_organization,
);

sub _serialize_sub_organization { $_[0]->_serializer('sub_organization') }


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




around json_ld_type => sub { return 'Organization' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'address' => \&_serialize_address,
       'aggregateRating' => \&_serialize_aggregate_rating,
       'alumni' => \&_serialize_alumni,
       'areaServed' => \&_serialize_area_served,
       'award' => \&_serialize_award,
       'awards' => \&_serialize_awards,
       'brand' => \&_serialize_brand,
       'contactPoint' => \&_serialize_contact_point,
       'contactPoints' => \&_serialize_contact_points,
       'department' => \&_serialize_department,
       'dissolutionDate' => \&_serialize_dissolution_date,
       'duns' => \&_serialize_duns,
       'email' => \&_serialize_email,
       'employee' => \&_serialize_employee,
       'employees' => \&_serialize_employees,
       'event' => \&_serialize_event,
       'events' => \&_serialize_events,
       'faxNumber' => \&_serialize_fax_number,
       'founder' => \&_serialize_founder,
       'founders' => \&_serialize_founders,
       'foundingDate' => \&_serialize_founding_date,
       'foundingLocation' => \&_serialize_founding_location,
       'funder' => \&_serialize_funder,
       'globalLocationNumber' => \&_serialize_global_location_number,
       'hasOfferCatalog' => \&_serialize_has_offer_catalog,
       'hasPOS' => \&_serialize_has_pos,
       'isicV4' => \&_serialize_isic_v4,
       'legalName' => \&_serialize_legal_name,
       'leiCode' => \&_serialize_lei_code,
       'location' => \&_serialize_location,
       'logo' => \&_serialize_logo,
       'makesOffer' => \&_serialize_makes_offer,
       'member' => \&_serialize_member,
       'memberOf' => \&_serialize_member_of,
       'members' => \&_serialize_members,
       'naics' => \&_serialize_naics,
       'numberOfEmployees' => \&_serialize_number_of_employees,
       'owns' => \&_serialize_owns,
       'parentOrganization' => \&_serialize_parent_organization,
       'publishingPrinciples' => \&_serialize_publishing_principles,
       'review' => \&_serialize_review,
       'reviews' => \&_serialize_reviews,
       'seeks' => \&_serialize_seeks,
       'serviceArea' => \&_serialize_service_area,
       'sponsor' => \&_serialize_sponsor,
       'subOrganization' => \&_serialize_sub_organization,
       'taxID' => \&_serialize_tax_id,
       'telephone' => \&_serialize_telephone,
       'vatID' => \&_serialize_vat_id,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;

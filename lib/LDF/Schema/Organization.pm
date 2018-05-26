package LDF::Schema::Organization;

# ABSTRACT: An organization such as a school

use Moo;

extends qw/ LDF::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An organization such as a school, NGO, corporation, club, etc.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::AggregateRating']>

=back

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<alumni>



Alumni of an organization.


A alumni should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has alumni => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has area_served => (
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


=head2 C<brand>



The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.


A brand should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Brand']>

=back

=cut

has brand => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contact_point>

C<contactPoint>

A contact point for a person or organization.


A contact_point should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=back

=cut

has contact_point => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contact_points>

C<contactPoints>

A contact point for a person or organization.


A contact_points should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=back

=cut

has contact_points => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<department>



A relationship between an organization and a department of that
organization, also described as an organization (allowing different urls,
logos, opening hours). For example: a store with a pharmacy, or a bakery
with a cafe.


A department should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has department => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<employee>



Someone working for this organization.


A employee should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has employee => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<employees>



People working for this organization.


A employees should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has employees => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<events>



Upcoming or past events associated with this place or organization.


A events should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has events => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<founder>



A person who founded this organization.


A founder should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has founder => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<founders>



A person who founded this organization.


A founders should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has founders => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<founding_location>

C<foundingLocation>

The place where the Organization was founded.


A founding_location should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has founding_location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has funder => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<has_offer_catalog>

C<hasOfferCatalog>

Indicates an OfferCatalog listing for this Organization, Person, or
Service.


A has_offer_catalog should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::OfferCatalog']>

=back

=cut

has has_offer_catalog => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<has_pos>

C<hasPOS>

Points-of-Sales operated by the organization or person.


A has_pos should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has has_pos => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<location>



The location of for example where the event is happening, an organization
is located, or where an action takes place.


A location should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::ImageObject']>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<makes_offer>

C<makesOffer>

A pointer to products or services offered by the organization or person.


A makes_offer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Offer']>

=back

=cut

has makes_offer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<member>



A member of an Organization or a ProgramMembership. Organizations can be
members of organizations; ProgramMembership is typically for individuals.


A member should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has member => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<member_of>

C<memberOf>

An Organization (or ProgramMembership) to which this Person or Organization
belongs.


A member_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::ProgramMembership']>

=back

=cut

has member_of => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<members>



A member of this organization.


A members should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has members => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<number_of_employees>

C<numberOfEmployees>

The number of employees in an organization e.g. business.


A number_of_employees should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has number_of_employees => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<owns>



Products owned by the organization or person.


A owns should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Product']>

=item C<InstanceOf['LDF::Schema::OwnershipInfo']>

=back

=cut

has owns => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<parent_organization>

C<parentOrganization>

=begin html

The larger organization that this organization is a <a class="localLink"
href="http://schema.org/subOrganization">subOrganization</a> of, if any.

=end html


A parent_organization should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has parent_organization => (
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

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has publishing_principles => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Review']>

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

=item C<InstanceOf['LDF::Schema::Review']>

=back

=cut

has reviews => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<seeks>



A pointer to products or services sought by the organization or person
(demand).


A seeks should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Demand']>

=back

=cut

has seeks => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. e.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has sponsor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sub_organization>

C<subOrganization>

A relationship between two organizations where the first includes the
second, e.g., as a subsidiary. See also: the more specific 'department'
property.


A sub_organization should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has sub_organization => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Organization' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { address => 'address' },
      { aggregateRating => 'aggregate_rating' },
      { alumni => 'alumni' },
      { areaServed => 'area_served' },
      { award => 'award' },
      { awards => 'awards' },
      { brand => 'brand' },
      { contactPoint => 'contact_point' },
      { contactPoints => 'contact_points' },
      { department => 'department' },
      { dissolutionDate => 'dissolution_date' },
      { duns => 'duns' },
      { email => 'email' },
      { employee => 'employee' },
      { employees => 'employees' },
      { event => 'event' },
      { events => 'events' },
      { faxNumber => 'fax_number' },
      { founder => 'founder' },
      { founders => 'founders' },
      { foundingDate => 'founding_date' },
      { foundingLocation => 'founding_location' },
      { funder => 'funder' },
      { globalLocationNumber => 'global_location_number' },
      { hasOfferCatalog => 'has_offer_catalog' },
      { hasPOS => 'has_pos' },
      { isicV4 => 'isic_v4' },
      { legalName => 'legal_name' },
      { leiCode => 'lei_code' },
      { location => 'location' },
      { logo => 'logo' },
      { makesOffer => 'makes_offer' },
      { member => 'member' },
      { memberOf => 'member_of' },
      { members => 'members' },
      { naics => 'naics' },
      { numberOfEmployees => 'number_of_employees' },
      { owns => 'owns' },
      { parentOrganization => 'parent_organization' },
      { publishingPrinciples => 'publishing_principles' },
      { review => 'review' },
      { reviews => 'reviews' },
      { seeks => 'seeks' },
      { serviceArea => 'service_area' },
      { sponsor => 'sponsor' },
      { subOrganization => 'sub_organization' },
      { taxID => 'tax_id' },
      { telephone => 'telephone' },
      { vatID => 'vat_id' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Thing>

=cut

1;

use utf8;

package SemanticWeb::Schema::Person;

# ABSTRACT: A person (alive

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Person';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

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
);


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
);


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
);


=head2 C<alumni_of>

C<alumniOf>

An organization that the person is an alumni of.


A alumni_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOrganization']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has alumni_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'alumniOf',
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
);


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
);


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
);


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
);


=head2 C<colleague>



A colleague of the person.


A colleague should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<Str>

=back

=cut

has colleague => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'colleague',
);


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
);


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
    json_ld   => 'funder',
);


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
);


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


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=cut

has height => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'height',
);


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
);


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
);


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
);


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
);


=head2 C<net_worth>

C<netWorth>

The total financial value of the person as calculated by subtracting assets
from liabilities.


A net_worth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=cut

has net_worth => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'netWorth',
);


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
);


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
);


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
);


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
);


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
);


=head2 C<work_location>

C<workLocation>

A contact location for a person's place of work.


A work_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=cut

has work_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workLocation',
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;

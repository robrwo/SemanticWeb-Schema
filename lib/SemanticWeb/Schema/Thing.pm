use utf8;

package SemanticWeb::Schema::Thing;

# ABSTRACT: The most generic type of item.

use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Thing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

The most generic type of item.




=head1 ATTRIBUTES


=head2 C<additional_type>

C<additionalType>

An additional type for the item, typically used for adding more specific
types from external vocabularies in microdata syntax. This is a
relationship between something and a class that the thing is in. In RDFa
syntax, it is better to use the native RDFa syntax - the 'typeof' attribute
- for multiple types. Schema.org tools may have only weaker understanding
of extra types, in particular those defined externally.


A additional_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_additional_type>

A predicate for the L</additional_type> attribute.

=cut

has additional_type => (
    is        => 'rw',
    predicate => '_has_additional_type',
    json_ld   => 'additionalType',
);


=head2 C<alternate_name>

C<alternateName>

An alias for the item.


A alternate_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_alternate_name>

A predicate for the L</alternate_name> attribute.

=cut

has alternate_name => (
    is        => 'rw',
    predicate => '_has_alternate_name',
    json_ld   => 'alternateName',
);


=head2 C<description>



A description of the item.


A description should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_description>

A predicate for the L</description> attribute.

=cut

has description => (
    is        => 'rw',
    predicate => '_has_description',
    json_ld   => 'description',
);


=head2 C<disambiguating_description>

C<disambiguatingDescription>

A sub property of description. A short description of the item used to
disambiguate from other, similar items. Information from other properties
(in particular, name) may be necessary for the description to be useful for
disambiguation.


A disambiguating_description should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_disambiguating_description>

A predicate for the L</disambiguating_description> attribute.

=cut

has disambiguating_description => (
    is        => 'rw',
    predicate => '_has_disambiguating_description',
    json_ld   => 'disambiguatingDescription',
);


=head2 C<identifier>



=begin html

<p>The identifier property represents any kind of identifier for any kind
of <a class="localLink" href="http://schema.org/Thing">Thing</a>, such as
ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for
representing many of these, either as textual strings or as URL (URI)
links. See <a href="/docs/datamodel.html#identifierBg">background notes</a>
for more details.<p>

=end html


A identifier should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_identifier>

A predicate for the L</identifier> attribute.

=cut

has identifier => (
    is        => 'rw',
    predicate => '_has_identifier',
    json_ld   => 'identifier',
);


=head2 C<image>



=begin html

<p>An image of the item. This can be a <a class="localLink"
href="http://schema.org/URL">URL</a> or a fully described <a
class="localLink" href="http://schema.org/ImageObject">ImageObject</a>.<p>

=end html


A image should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=head2 C<_has_image>

A predicate for the L</image> attribute.

=cut

has image => (
    is        => 'rw',
    predicate => '_has_image',
    json_ld   => 'image',
);


=head2 C<main_entity_of_page>

C<mainEntityOfPage>

=begin html

<p>Indicates a page (or other CreativeWork) for which this thing is the
main entity being described. See <a
href="/docs/datamodel.html#mainEntityBackground">background notes</a> for
details.<p>

=end html


A main_entity_of_page should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_main_entity_of_page>

A predicate for the L</main_entity_of_page> attribute.

=cut

has main_entity_of_page => (
    is        => 'rw',
    predicate => '_has_main_entity_of_page',
    json_ld   => 'mainEntityOfPage',
);


=head2 C<name>



The name of the item.


A name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_name>

A predicate for the L</name> attribute.

=cut

has name => (
    is        => 'rw',
    predicate => '_has_name',
    json_ld   => 'name',
);


=head2 C<potential_action>

C<potentialAction>

Indicates a potential Action, which describes an idealized action in which
this thing would play an 'object' role.


A potential_action should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Action']>

=back

=head2 C<_has_potential_action>

A predicate for the L</potential_action> attribute.

=cut

has potential_action => (
    is        => 'rw',
    predicate => '_has_potential_action',
    json_ld   => 'potentialAction',
);


=head2 C<same_as>

C<sameAs>

URL of a reference Web page that unambiguously indicates the item's
identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
official website.


A same_as should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_same_as>

A predicate for the L</same_as> attribute.

=cut

has same_as => (
    is        => 'rw',
    predicate => '_has_same_as',
    json_ld   => 'sameAs',
);


=head2 C<subject_of>

C<subjectOf>

A CreativeWork or Event about this Thing.


A subject_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_subject_of>

A predicate for the L</subject_of> attribute.

=cut

has subject_of => (
    is        => 'rw',
    predicate => '_has_subject_of',
    json_ld   => 'subjectOf',
);


=head2 C<url>



URL of the item.


A url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_url>

A predicate for the L</url> attribute.

=cut

has url => (
    is        => 'rw',
    predicate => '_has_url',
    json_ld   => 'url',
);




=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

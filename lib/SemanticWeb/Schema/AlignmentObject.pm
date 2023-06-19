use utf8;

package SemanticWeb::Schema::AlignmentObject;

# ABSTRACT: An intangible item that describes an alignment between a learning resource and a node in an educational framework

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'AlignmentObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

An intangible item that describes an alignment between a learning resource and a node in an educational framework.

Should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.



=head1 ATTRIBUTES


=head2 C<alignment_type>

C<alignmentType>

A category of alignment between the learning resource and the framework
node. Recommended values include: 'requires', 'textComplexity',
'readingLevel', and 'educationalSubject'.


A alignment_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_alignment_type>

A predicate for the L</alignment_type> attribute.

=cut

has alignment_type => (
    is        => 'rw',
    predicate => '_has_alignment_type',
    json_ld   => 'alignmentType',
);


=head2 C<educational_framework>

C<educationalFramework>

The framework to which the resource being described is aligned.


A educational_framework should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_educational_framework>

A predicate for the L</educational_framework> attribute.

=cut

has educational_framework => (
    is        => 'rw',
    predicate => '_has_educational_framework',
    json_ld   => 'educationalFramework',
);


=head2 C<target_description>

C<targetDescription>

The description of a node in an established educational framework.


A target_description should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_target_description>

A predicate for the L</target_description> attribute.

=cut

has target_description => (
    is        => 'rw',
    predicate => '_has_target_description',
    json_ld   => 'targetDescription',
);


=head2 C<target_name>

C<targetName>

The name of a node in an established educational framework.


A target_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_target_name>

A predicate for the L</target_name> attribute.

=cut

has target_name => (
    is        => 'rw',
    predicate => '_has_target_name',
    json_ld   => 'targetName',
);


=head2 C<target_url>

C<targetUrl>

The URL of a node in an established educational framework.


A target_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_target_url>

A predicate for the L</target_url> attribute.

=cut

has target_url => (
    is        => 'rw',
    predicate => '_has_target_url',
    json_ld   => 'targetUrl',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;

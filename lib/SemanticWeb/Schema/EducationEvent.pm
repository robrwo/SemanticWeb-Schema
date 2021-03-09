use utf8;

package SemanticWeb::Schema::EducationEvent;

# ABSTRACT: Event type: Education event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'EducationEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Education event.




=head1 ATTRIBUTES


=head2 C<assesses>



The item being described is intended to assess the competency or learning
outcome defined by the referenced term.


A assesses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_assesses>

A predicate for the L</assesses> attribute.

=cut

has assesses => (
    is        => 'rw',
    predicate => '_has_assesses',
    json_ld   => 'assesses',
);


=head2 C<educational_level>

C<educationalLevel>

The level in terms of progression through an educational or training
context. Examples of educational levels include 'beginner', 'intermediate'
or 'advanced', and formal sets of level indicators.


A educational_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_educational_level>

A predicate for the L</educational_level> attribute.

=cut

has educational_level => (
    is        => 'rw',
    predicate => '_has_educational_level',
    json_ld   => 'educationalLevel',
);


=head2 C<teaches>



The item being described is intended to help a person learn the competency
or learning outcome defined by the referenced term.


A teaches should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_teaches>

A predicate for the L</teaches> attribute.

=cut

has teaches => (
    is        => 'rw',
    predicate => '_has_teaches',
    json_ld   => 'teaches',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;

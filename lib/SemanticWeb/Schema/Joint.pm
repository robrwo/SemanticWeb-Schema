use utf8;

package SemanticWeb::Schema::Joint;

# ABSTRACT: The anatomical location at which two or more bones make contact.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Joint';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

The anatomical location at which two or more bones make contact.




=head1 ATTRIBUTES


=head2 C<biomechnical_class>

C<biomechnicalClass>

The biomechanical properties of the bone.


A biomechnical_class should be one of the following types:

=over

=item C<Str>

=back

=cut

has biomechnical_class => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'biomechnicalClass',
);


=head2 C<functional_class>

C<functionalClass>

The degree of mobility the joint allows.


A functional_class should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=item C<Str>

=back

=cut

has functional_class => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'functionalClass',
);


=head2 C<structural_class>

C<structuralClass>

The name given to how bone physically connects to each other.


A structural_class should be one of the following types:

=over

=item C<Str>

=back

=cut

has structural_class => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'structuralClass',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;

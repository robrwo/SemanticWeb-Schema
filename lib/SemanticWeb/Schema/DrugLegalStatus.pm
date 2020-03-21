use utf8;

package SemanticWeb::Schema::DrugLegalStatus;

# ABSTRACT: The legal availability status of a medical drug.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'DrugLegalStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

The legal availability status of a medical drug.




=head1 ATTRIBUTES


=head2 C<applicable_location>

C<applicableLocation>

The location in which the status applies.


A applicable_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_applicable_location>

A predicate for the L</applicable_location> attribute.

=cut

has applicable_location => (
    is        => 'rw',
    predicate => '_has_applicable_location',
    json_ld   => 'applicableLocation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;

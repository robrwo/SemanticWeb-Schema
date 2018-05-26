package LDF::Schema::SteeringPositionValue;

# ABSTRACT: A value indicating a steering position.

use Moo;

extends qw/ LDF::Schema::QualitativeValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A value indicating a steering position.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SteeringPositionValue' }



=head1 SEE ALSO



L<LDF::Schema::QualitativeValue>

=cut

1;

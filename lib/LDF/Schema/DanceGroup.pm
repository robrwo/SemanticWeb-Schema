package LDF::Schema::DanceGroup;

# ABSTRACT: A dance group&#x2014;for example

use Moo;

extends qw/ LDF::Schema::PerformingGroup /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A dance group&#x2014;for example, the Alvin Ailey Dance Theater or
Riverdance.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DanceGroup' }



=head1 SEE ALSO



L<LDF::Schema::PerformingGroup>

=cut

1;

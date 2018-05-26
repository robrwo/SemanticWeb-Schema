package LDF::Schema::Continent;

# ABSTRACT: One of the continents (for example

use Moo;

extends qw/ LDF::Schema::Landform /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

One of the continents (for example, Europe or Africa).



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Continent' }



=head1 SEE ALSO



L<LDF::Schema::Landform>

=cut

1;

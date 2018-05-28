package SemanticWeb::Schema::Motel;

# ABSTRACT: A motel

use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A motel. <br /><br /> See also the <a href="/docs/hotels.html">dedicated
document on the use of schema.org for marking up hotels and other forms of
accommodations</a>.

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Motel' }



=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;

package LDF::Schema::ItemPage;

# ABSTRACT: A page devoted to a single item

use Moo;

extends qw/ LDF::Schema::WebPage /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A page devoted to a single item, such as a particular product or hotel.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ItemPage' }



=head1 SEE ALSO



L<LDF::Schema::WebPage>

=cut

1;

package LDF::Schema::WPHeader;

# ABSTRACT: The header section of the page.

use Moo;

extends qw/ LDF::Schema::WebPageElement /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The header section of the page.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WPHeader' }



=head1 SEE ALSO



L<LDF::Schema::WebPageElement>

=cut

1;

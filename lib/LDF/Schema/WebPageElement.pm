package LDF::Schema::WebPageElement;

# ABSTRACT: A web page element

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A web page element, like a table or an image.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WebPageElement' }



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;

package LDF::Schema::TextDigitalDocument;

# ABSTRACT: A file composed primarily of text.

use Moo;

extends qw/ LDF::Schema::DigitalDocument /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A file composed primarily of text.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TextDigitalDocument' }



=head1 SEE ALSO



L<LDF::Schema::DigitalDocument>

=cut

1;

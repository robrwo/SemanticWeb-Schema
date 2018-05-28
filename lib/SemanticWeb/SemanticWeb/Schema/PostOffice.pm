package SemanticWeb::Schema::PostOffice;

# ABSTRACT: A post office.

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentOffice /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A post office.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PostOffice' }



=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentOffice>

=cut

1;

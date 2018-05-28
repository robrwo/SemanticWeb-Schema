package SemanticWeb::Schema::DownloadAction;

# ABSTRACT: The act of downloading an object.

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of downloading an object.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DownloadAction' }



=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;

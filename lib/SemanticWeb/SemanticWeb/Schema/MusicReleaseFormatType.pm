package SemanticWeb::Schema::MusicReleaseFormatType;

# ABSTRACT: Format of this release (the type of recording media used

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Format of this release (the type of recording media used, ie. compact disc,
digital media, LP, etc.).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicReleaseFormatType' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;

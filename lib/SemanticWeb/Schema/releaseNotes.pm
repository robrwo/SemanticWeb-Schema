use utf8;

package SemanticWeb::Schema::releaseNotes;

# ABSTRACT: Description of what changed in this version.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'releaseNotes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Description of what changed in this version.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

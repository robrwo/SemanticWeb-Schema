use utf8;

package SemanticWeb::Schema::musicBy;

# ABSTRACT: The composer of the soundtrack.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'musicBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The composer of the soundtrack.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

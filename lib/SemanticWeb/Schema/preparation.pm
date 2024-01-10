use utf8;

package SemanticWeb::Schema::preparation;

# ABSTRACT: Typical preparation that a patient must undergo before having the procedure performed.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'preparation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Typical preparation that a patient must undergo before having the procedure
performed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

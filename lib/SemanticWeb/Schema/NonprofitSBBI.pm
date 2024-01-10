use utf8;

package SemanticWeb::Schema::NonprofitSBBI;

# ABSTRACT: NonprofitSBBI: Non-profit type referring to a Social Interest Promoting Institution (NL).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'NonprofitSBBI';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

NonprofitSBBI: Non-profit type referring to a Social Interest Promoting
Institution (NL).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

use utf8;

package SemanticWeb::Schema::hoursAvailable;

# ABSTRACT: The hours during which this service or contact is available.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hoursAvailable';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The hours during which this service or contact is available.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

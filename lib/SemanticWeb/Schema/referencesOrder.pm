use utf8;

package SemanticWeb::Schema::referencesOrder;

# ABSTRACT: The Order(s) related to this Invoice

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'referencesOrder';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Order(s) related to this Invoice. One or more Orders may be combined
into a single Invoice.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

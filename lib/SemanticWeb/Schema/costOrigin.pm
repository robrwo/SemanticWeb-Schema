use utf8;

package SemanticWeb::Schema::costOrigin;

# ABSTRACT: Additional details to capture the origin of the cost data

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'costOrigin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Additional details to capture the origin of the cost data. For example,
'Medicare Part B'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

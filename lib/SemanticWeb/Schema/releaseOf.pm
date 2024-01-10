use utf8;

package SemanticWeb::Schema::releaseOf;

# ABSTRACT: The album this is a release of.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'releaseOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The album this is a release of.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

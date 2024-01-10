use utf8;

package SemanticWeb::Schema::serviceType;

# ABSTRACT: The type of service being offered, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'serviceType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of service being offered, e.g. veterans' benefits, emergency
relief, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

use utf8;

package SemanticWeb::Schema::AutoRental;

# ABSTRACT: A car rental business.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness /;


use MooX::JSON_LD 'AutoRental';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A car rental business.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AutomotiveBusiness>

=cut

1;

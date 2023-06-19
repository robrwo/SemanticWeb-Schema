use utf8;

package SemanticWeb::Schema::AutoWash;

# ABSTRACT: A car wash business.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness /;


use MooX::JSON_LD 'AutoWash';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A car wash business.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AutomotiveBusiness>

=cut

1;
